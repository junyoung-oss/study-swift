//
//  Condition.swift
//  FastSwiftBasic
//
//  Created by Developer_P on 2/29/24.
//

import SwiftUI

struct Condition: View {
    
// 참과 거짓을 인용한 일반적인 if 조건문 예시
//    var hasLoggedin = false // true
//    var body: some View {
//        if hasLoggedin{
//            Text("로그아웃 하시겠습니까?")
//        } else {
//            Text("로그인 하시겠습니까?")
//        }
//    }
    
// 일반적인 if 조건문 예시
    var count = 4

    var body: some View {
        if count > 4 {
            Text("숫자는 4보다 큽니다.")
        } else {
            Text("숫자는 4와 같거나 작습니다.")
        }

    }

    
// if문과 비슷한 개념 가드문 예시 : 가드문은 if문과 반대입니다.
// 현재 개념을 설명하기 위한 아래 코드는 UI에서 동작하지 않습니다.
//    var hasLoggedin = true //false
//    var body: some View {
//       guard hasLoggedin else { // guard:수비대, 지킴이 -> 3 (로그인 여부 판단)
//            Text("로그인 하시겠습니까?") // false
//        }
//            Text("로그아웃 하시겠습니까?") // true
//        }
    
    
    }

#Preview {
    Condition()
}
