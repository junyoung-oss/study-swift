import Foundation

let game = BaseballGame()
game.start()


// BaseballGame.swift 파일
import Foundation

class BaseballGame {
    private var answer: [Int] = []

    func start() {
        answer = makeAnswer()
        print("숫자 야구 게임을 시작합니다!")
        print("1에서 9까지의 서로 다른 임의의 수 3개를 맞춰주세요.")
        var attempts = 0

        repeat {
            let guess = getGuess()
            let result = check(guess: guess)
            if result.strikes == 3 {
                print("축하합니다! 정답을 맞추셨습니다.")
                break
            } else {
                print("결과: \(result.strikes) 스트라이크, \(result.balls) 볼")
            }
            attempts += 1
        } while true

        print("시도 횟수: \(attempts)")
    }

    private func makeAnswer() -> [Int] {
        var numbers = Set<Int>()
        while numbers.count < 3 {
            numbers.insert(Int.random(in: 1...9))
        }
        return Array(numbers)
    }

    private func getGuess() -> [Int] {
        print("세 자리 숫자를 입력하세요: ", terminator: "")
        guard let input = readLine(), input.count == 3 else {
            print("세 자리 숫자를 정확히 입력하세요.")
            return getGuess()
        }
        
        var guess = [Int]()
        for char in input {
            if let number = Int(String(char)) {
                guess.append(number)
            } else {
                print("올바른 숫자가 아닌 문자가 포함되어 있습니다.")
                return getGuess()
            }
        }
        
        guard Set(guess).count == 3 else {
            print("서로 다른 세 자리 숫자를 입력하세요.")
            return getGuess()
        }
        
        return guess
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
}
