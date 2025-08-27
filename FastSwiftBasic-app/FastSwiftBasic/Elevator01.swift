// 구조체 - 하나의 동작을 하는 객체
// 뷰 안에 자연스럽게 엘리베이터가 녹아있는 형태를 만들어봅시다.
import SwiftUI

struct Elevator01: View {
    
    @State var level: Int = 1 // level 이걸 프로퍼티 메소드라고 부르며, 현재 층이 표시되는 값입니다.
    
    var body: some View {
        VStack {
            Text("층수 : \(level)")
            HStack {
                Button {
                    level = goDown(level) // 요렇게 하면 return도 필요가 없어집니다.
                } label: {
                    Text("아래로")
                }
                Button {
                    level = goUp(level) // 요렇게 하면 return도 필요가 없어집니다.
                } label: {
                    Text("위로")
                }
            }
        }
    }
    
    func goDown(_ level: Int) -> Int {
        return level - 1

    }
    
    func goUp(_ level: Int) -> Int {
        return level + 1
    }
}

#Preview {
    Elevator01()
}
