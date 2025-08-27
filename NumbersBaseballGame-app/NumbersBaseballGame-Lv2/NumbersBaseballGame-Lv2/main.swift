//
//  main.swift
//  NumbersBaseballGame-Lv2
//
//  Created by Developer_P on 3/15/24.
//

// main.swift 파일
let game = BaseballGame()
game.start()


// BaseballGame.swift 파일
import Foundation

class BaseballGame {
    private var answer: [Int] = []
    
    func start() {
        answer = makeAnswer()
        print("< 게임을 시작합니다 >")
        
        while true {
            print("숫자를 3자리 입력하세요")
            guard let input = readLine(), input.count == 3 else {
                print("올바르지 않은 입력값입니다")
                continue
            }
            
            let guess = input.compactMap { Int(String($0)) }
            guard Set(guess).count == 3 else {
                print("올바르지 않은 입력값입니다")
                continue
            }
            
            let result = check(guess: guess)
            printResult(result: result)
            
            if result.strikes == 3 {
                print("정답입니다!")
                break
            }
        }
    }
    
    private func makeAnswer() -> [Int] {
        var numbers = Set<Int>()
        while numbers.count < 3 {
            numbers.insert(Int.random(in: 1...9))
        }
        return Array(numbers)
    }
    
    private func check(guess: [Int]) -> (strikes: Int, balls: Int) {
        var strikes = 0
        var balls = 0
        
        for (index, number) in guess.enumerated() {
            if number == answer[index] {
                strikes += 1
            } else if answer.contains(number) {
                balls += 1
            }
        }
        return (strikes, balls)
    }
    
    private func printResult(result: (strikes: Int, balls: Int)) {
        if result.strikes == 0 && result.balls == 0 {
            print("Nothing")
        } else {
            var resultString = ""
            if result.strikes > 0 {
                resultString += "\(result.strikes)스트라이크 "
            }
            if result.balls > 0 {
                resultString += "\(result.balls)볼"
            }
            print(resultString)
        }
    }
}
