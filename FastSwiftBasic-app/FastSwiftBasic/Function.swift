import SwiftUI

struct Function: View {
    
    @State var inputNumber: Int = 4
    
    var body: some View {
        VStack {
            Text("Input number is \(inputNumber)")
            
            Button(action: {
                inputNumber = plusFive(input: inputNumber)
//                inputNumber = inputNumber + 5 // 오른쪽에 있는 값을 왼쪽에 대입하는 겁니다.
            }) {
                Text("+5")
            }
        }
    }
    // 함수를 배웠으니 간단하게 만들어 봅시다.
    func plusFive(input: Int) -> Int {
        //Missing return in instance method expected to return 'Int' : Int를 반환한다 해놓고서는 왜 아무것도 반환 하지 않는거야?!
        // 우리가 반환 해야할 것은 입력 반은 값에 (input) 5를 더한 값을 반환 해주어야 하죠
        return input + 5
    }
}

    

struct Function_Previews: PreviewProvider {
    static var previews: some View {
        Function()
    }
}
