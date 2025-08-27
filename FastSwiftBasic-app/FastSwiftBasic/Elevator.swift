//
//  Elevator.swift
//  FastSwiftBasic
//
//  Created by Developer_P on 3/4/24.
//
// 구조체를 활용한 실기
import SwiftUI

// 우선은 UI부터 만드는 실습을 진행하는게 좋습니다.
struct Elevator: View {
    
//    @State var level: Int = 1 // level 이걸 프로퍼티 메소드라고 부르며, 현재 층이 표시되는 그런 값입니다.
    
//    var myElevaor = ElevatorStruct() // 엘리베이터를 만든다 라는 의미가 됩니다.
    @State var myElevaor = ElevatorStruct() // 값이 변하게 하려면 @State 라는 녀석이 필요합니다.
    
    var body: some View {
        VStack {
            //Text("층수 \(level)")
            Text("층수 : \(myElevaor.level)")
            
            HStack {
                Button {
                    //level = level - 1
                    //level = goDown(level: level) // "_"를 안붙이면 이렇게
                    //level = goDown(level) // "_"를 붙이면 이렇게
                    myElevaor.goDown() // 요렇게 하면 return도 필요가 없어집니다.
                } label: {
                    Text("Down")
                }
                Button {
                    //level = level + 1
                    //level = goUp(level: level) // "_"를 안붙이면 이렇게
                    //level = goUp(level) // "_"를 붙이면 이렇게
                    myElevaor.goUp() // 요렇게 하면 return도 필요가 없어집니다.
                } label: {
                    Text("Up")
                }
            }
        }
    }
//    func goDown(_ level: Int) -> Int {
//        return level - 1
//        
//    }
//    func goUp(_ level: Int) -> Int {
//        return level + 1
//    }
}


struct ElevatorStruct {
    // 설계도이자 요구 사항으로는 아래와 같습니다.
    // 층 수를 표시해주는 디스플레이
    // 위로 올라갈 수 있어야 합니다.
    // 아래로 내려갈 수 있어야 합니다.
    // Cannot assign to property: 'self' is immutable 오류의 경우 다음 내용에서 배워야할 문제입니다.
    // 간단히 말씀 드리면, struct는 붕어빵이기 때문에 붕어빵을 찍으면 팥넣고 붕어빵을 구웠는데 슈크림이 좋아요 그러면 다시구워야 하죠 그런데 레벨이 1넣고 구웠는데 숫자를 작게 해주잖아요? 이거 변경 불가능해요 라고 에러가 나오는 거에요.
    var level: Int = 1
    
//    func goDown() -> Int {
    mutating func goDown() {
//        return level - 1
        level = level - 1
    }
    mutating func goUp() {
//    func goUp() -> Int {
//        return level + 1
        level = level + 1
    }
    
}

#Preview {
    Elevator()
}
