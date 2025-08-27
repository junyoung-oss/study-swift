// 구조체 - 하나의 동작을 하는 객체
// 뷰 안에 자연스럽게 엘리베이터가 녹아있는 바탕으로 엘리베이터라는 객체의 속성을 가지고 만들어봅시다.
//
import SwiftUI

struct Elevator02: View {
    // 신규
    // var myElevator02 = ElevatorStruct() // ()그냥 괄호만 있다는건 만든다라는 뜻입니다.
    // 값이 변하게 해야하니까 @State를 붙여주어야 해요
    @State var myElevator02 = ElevatorStruct02()

    var body: some View { // 이곳은 버튼과 텍스트만 놓고 위에서 myElevator02를 갖다가 기능들을 사용하는거죠
        VStack {
            Text("층수 : \(myElevator02.level)")
            HStack {
                Button {
                    // 신규
                    myElevator02.goDown()
                } label: {
                    Text("아래로")
                }
                Button {
                    // 신규
                    myElevator02.goUp()
                } label: {
                    Text("위로")
                }
            }
        }
    }
}
// 여기서 가장 중요한 것은 "ElevatorStruct()" 이건 붕어빵 틀이고, "myElevator02" 이건 붕어빵을 굽는 것이고 "myElevator02.level" 요기는 어떠한 변수와 함수들을 가져서 속성값과 동작을 할 수 있는 것을 이야기합니다.
// 신규
// 엘리베이터가 있어야 하니 설계를 해야하죠 아래와같이..
struct ElevatorStruct02 {
    // 층 수를 표시해주는 디스플레이
    // 위로 올라갈 수 있어야 합니다.
    // 아래로 내려갈 수 있어야 합니다.
    var level: Int = 1
    // 'mutating' 키워드는 구조체나 열거형 내에서 메서드가 자신의 속성을 수정할 수 있도록 허용하는 데 사용됩니다. 일반적으로 구조체나 열거형은 값 타입이기 때문에 메서드 내에서 속성을 수정하려면 명시적으로 'mutating'을 선언해야 합니다.
    // 주어진 코드에서 'ElevatorStruct' 내의 메서드는 속성을 수정하고 있지만 'mutating' 키워드를 사용하지 않았습니다. 이 경우에도 컴파일러가 오류를 발생시키지 않고 코드가 작동하는 것은 스위프트의 일부 특수한 동작 때문입니다.
    // mutating 강의에서는 없었지만 일반적으로 스위프트는 구조체의 메서드에서 속성을 수정할 때 'mutating' 키워드를 요구하는데 속성의 변경이 메서드 외부에서 발생하는 경우에는 'mutating' 키워드를 생략할 수 있습니다. 이 경우 컴파일러가 자동으로 'mutating' 키워드를 추가하죠.
    // 이런 동작을 스위프트에서 "암시적인 멤버 표시 변경"이라고 합니다.
    // 일반적으로는 'mutating' 키워드를 사용하여 메서드가 속성을 수정한다는 것을 명시적으로 나타내는 것이 좋습니다. 이렇게 하면 코드가 더 명확해지고 유지보수하기 쉬워집니다.
    mutating func goDown() {
        level = level - 1
    }
    mutating func goUp() {
        level = level + 1
    }
}


#Preview {
    Elevator02()
}
