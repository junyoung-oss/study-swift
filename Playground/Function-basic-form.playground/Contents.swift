// 함수의 기본 형태와 쓰임
// 기능수행, 재사용, 매개변수, 반환값, 함수타입
// 메서드와 메서드의 정의와 소속성 및 호출 방식
// 쉬운설명 -> 함수 === 기능 (독립적) / 메서드 === 특정기능 (특정범위내에서만 사용)

// 함수 호출 방식 예시
// 직접적인 호출 방식
/*
let A = stayJun(1, 2)
let B = stayJun(3, 4)
let C = stayJun(5, 6)
let D = stayJun(7, 8)
let E = stayJun(9, 10)
 */



// 메서드의 호출 방식 예시
// 해당하는 객체 또는 타입에 대하여 호출
class A {
    func sayMethod() {
        print("Hi~! StayJun! 👋");
    }
}
let myA = A() // A 클래스의 객체 생성
myA.sayMethod() // 객체를 사용하여 sayMethod 호출



// 함수의 선언과 연습 1
// 기억해야할 것: 네이밍 컨벤션 -> 카멜케이스 사용 (ex. methodName) 맨 앞글자 소문자 뒤부터 대문자
func iamMan(goodman: String) {
    print("나는 \(goodman)")
}
iamMan(goodman: "좋은 남자다. 👊")


// 함수의 선언과 연습 2
func yourWoman(to goodwoman: String) {
    print("당신은 \(goodwoman)")
}
yourWoman(to: "멋진 여자다!👍")


// 함수의 선언과 연습 3
func sheisLoveme(_ metoo: String) -> String {
    return ("그녀가 \(metoo)")
}
print(sheisLoveme("날 좋아한다! 😍"))

