import UIKit

var greeting = "Hello, playground"
// Swift의 가장 기본은 A = B 즉, B값을 A에게 할당한다는 의미입니다.

let color = "purple"
print(color) // 출력값 "purple"

// 저장 프로퍼티
let name01 = "짱구"
//name = "맹구" 이건 당연히 에러가 납니다~ 새로운 값이 들어가지 못하는 상수잖아요..

var age = "맹구"
age = "철수" // 이건 재할당이 가능하니 당연히 되는 겁니다.

var x = 10
var y = 20
var z = 0

// 연산 프로퍼티
var sum: Int {
    get { // sum 의 값을 불러오는 것
        return x + y
    }
    set { // sum 의 값을 넣어주는 것
        z = x + y
    }
}
print(sum) // 출력값 = 30

// get, set 중 get만 필요한 경우 키워드 생략 가능
var sum1: Int {
    return x + y
}

// 아래와 같이 더 축약 가능
var sum2: Int {
    x + y
}

// 한 줄 텍스트
var greeting01 = "안녕하세요!"

// 멀티라인 텍스트
var greeting02 = 
"""
안녕하세요!? 이 멀티라인 텍스트의 경우에는 조금 많은 내용들이 들어가 있어야 합니다.
그래야지만 이 멀티라인 텍스트를 유용하게 사용할
수 있는 자격이 갖춰지기 때문입니다. 
"""

// 문자 보간법 String stringInterpolation
// '\()' 를 사용해 표현합니다.
// 변수 또는 상수 등의 값을 문자열 내에 나타내고 싶을 때 사용합니다.
let name02 = "A";
var greeting03 = "Hello \(name02)";

let height = 185;
let nyInfo = "My height is \(height)";

// 한줄주석
/* 멀티라인 주석 (여러줄 주석입니다.) */

// 함수와 메서드
// 함수는 기능을 수행하며, 순차적으로 실행됩니다.
// 메서드는 클래스, 구조체, 열거형 등 특정타입에 속해 있습니다.

// 함수선언 예시
//func 함수_이름(아규먼트_레이블: 파라미터_타입) -> 리턴_타입 {
//      ... 코드
//} 네이밍 컨벤션으로 카멜케이스를 사용합니다. (ex. methodName O | method_name X)

func sayHi01(friend: String) {
    print("Hi~ \(friend)!")
}
sayHi01(friend: "준영")

func sayHi02 (to friend: String) { // to = 아규먼트 레이블 (호출하는 시점에 사용할 수 있는 레이블)
    print("Hi~ \(friend)!")
}
sayHi02(to: "준영") // Hi라고 말한다 to 영호에게.. 좀더 명시적인 느낌입니다. 준영이라는 값이 friend에 들어가서 결국 Hi~ 준영을 나타내줍니다.

func sayHi03 (_ friend: String) -> String { // 언더바 = 아규먼트 레이블 == to -> 언더바의 기능은 호출하는 쪽에서 "준영"이라는 파라미터 이름을 써주지 않아도 됩니다.
    return("Hi~ \(friend)!")
}
print(sayHi03("준영")) // 언더바의 기능으로 인하여 friend를 사용 하지 않아도 "준영" 이라는 값이 friend에 들어가게 됩니다.

// input(입력값)과 Output(출력값)을 고려하라
/* 정상몸무게 = (키 - 100) * (9/10)이라고 할 때
 우리가 구하고 싶은것이 특정 키에 알맞은 몸무게를 구하는 함수다 라고 한다면
 우리가 필요한 것(데이터)은 특정키가 되는 것이고
 우리가 계산 하고 싶은 것은 몸무게가 되는 것이죠
 그렇다면 특정키가 파라미터로 들어 가는 것이고
몸무게가 리턴으로 가야 하겠죠?!
 */

/* 정상 몸무게 = (키 - 100) * (9/10) 이라고 할때
 특정 키에 알맞은 몸무게를 구하는 함수를 작성해라. */
func getweight(height: Int) -> Double {
    let weight = (height - 100) * 9 / 10
    return Double(weight)
}

// 특정 몸무게에 알맞은 키를 구하는 함수를 구하라.
/* 이번엔 input이 몸무게가 되고 Output이 키가 되겠죠?
몸무게 weight이 들어가고 int타입으로 정의를 해줍시다.
키는 Double타입으로 리턴을 하고 수식의 height은 위 코드의
반대로 뒤집으면 되겠죠?! */
func getheight(weight: Int) -> Double {
    let height = weight * 10 / 9 + 100
    return Double(height)
}

