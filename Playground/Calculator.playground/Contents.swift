// 더하기 연산 클래스
class AddOperation {
    func operate(_ num1: Int, _ num2: Int) -> Int {
        return num1 + num2
    }
}

// 빼기 연산 클래스
class SubtractOperation {
    func operate(_ num1: Int, _ num2: Int) -> Int {
        return num1 - num2
    }
}

// 곱하기 연산 클래스
class MultiplyOperation {
    func operate(_ num1: Int, _ num2: Int) -> Int {
        return num1 * num2
    }
}

// 나누기 연산 클래스
class DivideOperation {
    func operate(_ num1: Int, _ num2: Int) -> Int {
        return num1 / num2
    }
}

// Calculator 클래스
class Calculator {
    let addOperation = AddOperation()
    let subtractOperation = SubtractOperation()
    let multiplyOperation = MultiplyOperation()
    let divideOperation = DivideOperation()
    
    // 더하기 연산 메서드
    func add(_ num1: Int, _ num2: Int) -> Int {
        let result = addOperation.operate(num1, num2)
        print("\(num1) + \(num2) = \(result)")
        return result
    }
    
    // 빼기 연산 메서드
    func subtract(_ num1: Int, _ num2: Int) -> Int {
        let result = subtractOperation.operate(num1, num2)
        print("\(num1) - \(num2) = \(result)")
        return result
    }
    
    // 곱하기 연산 메서드
    func multiply(_ num1: Int, _ num2: Int) -> Int {
        let result = multiplyOperation.operate(num1, num2)
        print("\(num1) * \(num2) = \(result)")
        return result
    }
    
    // 나누기 연산 메서드
    func divide(_ num1: Int, _ num2: Int) -> Int {
        let result = divideOperation.operate(num1, num2)
        print("\(num1) / \(num2) = \(result)")
        return result
    }
}

// Calculator 인스턴스 생성
let calculator = Calculator()

// 각 연산을 수행하고 결과를 출력
calculator.add(5, 3)
calculator.subtract(5, 3)
calculator.multiply(5, 3)
calculator.divide(5, 3)
