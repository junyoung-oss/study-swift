//
//  half.swift
//  FastSwiftBasic
//
//  Created by Developer_P on 3/3/24.
//
// 중간평가.
import SwiftUI

struct half: View {
//    var name: String = "StayJun"
//    var age: Int = 27
    var names: [String] = ["네이버", "카카오", "쿠팡", "라인", "배달의민족"] // 배열을 만들고 하나씩 꺼내기 위해선 ForEach가 필요합니다.
    var body: some View {
//        VStack { // 세로로
            
//            HStack { //가로로
//
//                Text("\(name)입니다.")
//                Image(systemName: "pencil")
//            }
//            Text("안녕하세요 \(age)살의 \(name)!")
//        }
// 꿀팁 : 쉬프트 + 탭 = 공백정리가 됩니다.
        List {
            ForEach(names, id: \.self) { name in
                // 여기서 변수를 하나더 만들 수 있습니다.
                var welcome = sayHi(to: name)
                if name == "카카오" {
                    Text("우선운위기업 \(welcome)")
                } else {
                    Text(welcome)
                }
//                Text(welcome)
            }
//            Text("네이버")
//            Text("카카오")
//            Text("쿠팡")
//            Text("라인")
//            Text("배달의민족")
        }
    }
    func sayHi(to name: String) -> String {
        return "\(name)에 입사하겠습니다."
    }
}

#Preview {
    half()
}
