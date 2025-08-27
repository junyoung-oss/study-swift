// Calculator 클래스 LV 1
class Calculator {
    // 연산을 수행하는 메서드
    func calculate(_ operation: String, firstNumber: Double, secondNumber: Double) -> Double? {
        var result: Double?

        // 입력된 연산자에 따라 연산을 수행
        switch operation {
        case "+":
            result = firstNumber + secondNumber
        case "-":
            result = firstNumber - secondNumber
        case "*":
            result = firstNumber * secondNumber
        case "/": 
            // 0으로 나누는 경우를 처리하여 오류를 방지
            if secondNumber != 0 {
                result = firstNumber / secondNumber
            }
        default:
            break
        }
        return result
    }
}

// Main
let calculator = Calculator()

// 덧셈 연산 수행 및 결과 출력
if let addResult = calculator.calculate("+", firstNumber: 5, secondNumber: 3) {
    print("addResult : \(addResult)")
} else {
    // 유효하지 않은 연산일 경우 메시지 출력
    print("Invalid operation")
}

// 뺄셈 연산 수행 및 결과 출력
if let subtractResult = calculator.calculate("-", firstNumber: 5, secondNumber: 3) {
    print("subtractResult : \(subtractResult)")
} else {
    // 유효하지 않은 연산일 경우 메시지 출력
    print("Invalid operation")
}

// 곱셈 연산 수행 및 결과 출력
if let multiplyResult = calculator.calculate("*", firstNumber: 5, secondNumber: 3) {
    print("multiplyResult : \(multiplyResult)")
} else {
    // 유효하지 않은 연산일 경우 메시지 출력
    print("Invalid operation")
}

// 나눗셈 연산 수행 및 결과 출력
if let divideResult = calculator.calculate("/", firstNumber: 5, secondNumber: 3) {
    print("divideResult : \(divideResult)")
} else {
    // 유효하지 않은 연산일 경우 메시지 출력
    print("Invalid operation")
}
