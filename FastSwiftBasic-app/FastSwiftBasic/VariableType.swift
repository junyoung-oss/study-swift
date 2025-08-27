//
//  VariableType.swift
//  FastSwiftBasic
//
//  Created by Developer_P on 2/29/24.
//

import SwiftUI

struct VariableType: View {
    
    var name: String = "Leeo" // 문자열 선언 되어 있죠?
    var age: Int = 20 // 정수 int죠?
    var height: Float = 183.6 //
    var weight: Double = 65.6 //
    var havePet: Bool = false// 애완동물이 있나요? false (거짓)
    
    
    
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/) // Text는 문자열만 사용이가능합니다.
            Text("10") // 그냥 10은 문자열이 아니죠? ㅎㅎ
            Text("\(name)") //
            Text("\(age)") //
            Text("\(height)") //
            Text("\(weight)") //
            Text("\(havePet.description)") //
        }
    }
}

#Preview {
    VariableType()
}
