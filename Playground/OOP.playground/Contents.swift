// 추상화 - 이렇게 타입을 정의하는 것 (필요한 정보만 노출시키는 것)
class Account {}
struct Account1 {}
protocol Account2 {}

// 캡슐화 (외부 접근 제한 및 세부 구현 숨김)
class Person {
  private var location = "서울"

  private func doSomething1() {
    print("잠시 휴게소에 들려서 딴짓")
  }
  private func doSomething2() {
    print("한숨 자다 가기")
  }
  func currentLocation() {
    print("====")
    print("현재 위치 :", location)
    print("====")
  }

  func goToBusan() {
    print("서울을 출발합니다.")
    doSomething1()
    doSomething2()
    print("부산에 도착했습니다.")
    location = "부산"
  }
}

// 상속 (상위 클래스의 특성을 하위클래스가 물려받아 재사용 하는 것)
class Animal {
    var species = "동물"
}

class Dog: Animal {
    var name = "초코"
}

let dog = Dog()
dog.species // 동물
dog.name // 초코


// 다형성 (서로 다른 클래스들이 동일한 메서드를 호출할 때 각 클래스의 오버라이딩 된 메서드 실행)

//1) 오버라이딩 (자식클래스 -> 부모 클래스의 동일한 메서드 이름 사용하여 내용 변경 및 확장 가능)

class Dog1 {
  func bark() { print("멍멍") }
}
class Poodle: Dog1 {
  override func bark() { print("왈왈") }
}
class Husky: Dog1 {
  override func bark() { print("으르르") }
}
class Bulldog: Dog1 {
  override func bark() {
    super.bark()
      // 여기서 super 라는 것은 부모의 인스턴스를 의미
    print("bowwow")
  }
}

var dog1: Dog1 = Dog1()
dog1.bark() // 멍멍

dog1 = Poodle()
dog1.bark() // 왈왈

dog1 = Husky()
dog1.bark() // 으르르

dog1 = Bulldog()
dog1.bark() // 멍멍, bowwow


// 2) 오버로딩 (동일 함수 or 메서드 이름 -> 여러 다양한 버전의 함수 정의)
// 함수를 식별할 땐 단순히 함수 이름을 보고 하는 게 아니라
// 함수 이름, 파라미터(타입, 갯수, Argument Label), 리턴타입을 모두 종합해서 함수를 식별
func printParameter() {
  print("No param")
}

func printParameter(param: Int) {
  print("Input :", param)
}


func printParameter(_ param: Int) -> Int {
  print("Input :", param)
    return param
}

func printParameter(_ param: Int) -> Double {
  print("Input :", param)
    return Double(param)
}

printParameter()
printParameter(param: 1)
let int: Int = printParameter(2)
let double: Double = printParameter(2)
