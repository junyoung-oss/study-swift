// AddOperation 클래스
class AddOperation {
    // 더하기 연산을 수행하는 메서드
    func operate(firstNumber: Int, secondNumber: Int) -> Int {
        return firstNumber + secondNumber
    }
}

// SubtractOperation 클래스
class SubtractOperation {
    // 빼기 연산을 수행하는 메서드
    func operate(firstNumber: Int, secondNumber: Int) -> Int {
        return firstNumber - secondNumber
    }
}

// MultiplyOperation 클래스
class MultiplyOperation {
    // 곱하기 연산을 수행하는 메서드
    func operate(firstNumber: Int, secondNumber: Int) -> Int {
        return firstNumber * secondNumber
    }
}

// DivideOperation 클래스
class DivideOperation {
    // 나누기 연산을 수행하는 메서드
    func operate(firstNumber: Int, secondNumber: Int) -> Int {
        return firstNumber / secondNumber
    }
}

// Calculator 클래스 LV3
class Calculator {
    // 더하기 연산 객체
    let addOperation = AddOperation()
    // 빼기 연산 객체
    let subtractOperation = SubtractOperation()
    // 곱하기 연산 객체
    let multiplyOperation = MultiplyOperation()
    // 나누기 연산 객체
    let divideOperation = DivideOperation()
    
    // 연산을 수행하는 메서드
    func calculate(operator: String, firstNumber: Int, secondNumber: Int) -> Double? {
        var result: Double?
        
        // 입력된 연산자에 따라 해당 연산을 수행
        switch `operator` {
        case "+":
            result = Double(addOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber))
        case "-":
            result = Double(subtractOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber))
        case "*":
            result = Double(multiplyOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber))
        case "/":
            result = Double(divideOperation.operate(firstNumber: firstNumber, secondNumber: secondNumber))
        default:
            // 유효하지 않은 연산자일 경우 nil 반환
            result = nil
        }

        return result
    }
}

// Main
let calculator = Calculator()

// 연산 수행 및 결과 출력
if let addResult = calculator.calculate(operator: "+", firstNumber: 5, secondNumber: 3) {
    print("addResult : \(addResult)")
} else {
    print("Invalid operation")
}

if let subtractResult = calculator.calculate(operator: "-", firstNumber: 5, secondNumber: 3) {
    print("subtractResult : \(subtractResult)")
} else {
    print("Invalid operation")
}

if let multiplyResult = calculator.calculate(operator: "*", firstNumber: 5, secondNumber: 3) {
    print("multiplyResult : \(multiplyResult)")
} else {
    print("Invalid operation")
}

if let divideResult = calculator.calculate(operator: "/", firstNumber: 5, secondNumber: 3) {
    print("divideResult : \(divideResult)")
} else {
    print("Invalid operation")
}
