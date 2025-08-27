// AddOperation 클래스
class AddOperation {
    func operate(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber + secondNumber
    }
}

// SubtractOperation 클래스
class SubtractOperation {
    func operate(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber - secondNumber
    }
}

// MultiplyOperation 클래스
class MultiplyOperation {
    func operate(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        return firstNumber * secondNumber
    }
}

// DivideOperation 클래스
class DivideOperation {
    func operate(_ firstNumber: Int, _ secondNumber: Int) -> Int {
        guard secondNumber != 0 else {
            fatalError("Division by zero is not allowed")
        }
        return firstNumber / secondNumber
    }
}

// Calculator 클래스
class Calculator {
    let addOperation = AddOperation()
    let subtractOperation = SubtractOperation()
    let multiplyOperation = MultiplyOperation()
    let divideOperation = DivideOperation()
    
    // 연산을 수행하는 메서드
    func calculate(operator: String, firstNumber: Int, secondNumber: Int) -> Int? {
        var result: Int?

        // 입력된 연산자에 따라 해당 연산을 수행
        switch `operator` {
        case "+":
            result = addOperation.operate(firstNumber, secondNumber)
        case "-":
            result = subtractOperation.operate(firstNumber, secondNumber)
        case "*":
            result = multiplyOperation.operate(firstNumber, secondNumber)
        case "/":
            result = divideOperation.operate(firstNumber, secondNumber)
        case "%":
            // 나머지 연산
            result = firstNumber % secondNumber
        default:
            // 유효하지 않은 연산자인 경우 nil 반환
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

if let remainderResult = calculator.calculate(operator: "%", firstNumber: 5, secondNumber: 3) {
    print("remainderResult : \(remainderResult)")
} else {
    print("Invalid operation")
}
