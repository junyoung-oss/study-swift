//
//  ContentView.swift
//  FastSwiftBasic
//
//  Created by Developer_P on 2/29/24.
//

import SwiftUI

struct ContentView: View {
    
    var place: String = "Paris" // paris 라는 문자열이 변수 place에 저장이 된 상태입니다.
    // 그렇다면 위 변수가 왜 필요한가?
    
    var name: String = "라이오"
    
    
    var body: some View {
        VStack { // 스택이 쌓여있다는 뜻이겠죠? V스택 즉, 버티칼(세로) 스택을 말하는거겠죠?
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
//            Text("paris")
//            Text("Japan")
//            Text("U.S.A.")
//            Text("Hello, world!")
            // 위 text 에서 알 수 있는 게 무엇일까요?
            // 네, 이 text에서는 데이터가 필요한 것을 알 수 있죠
            // 이 데이터는 의미상으로는 4개의 텍스트가 같아요
            // 이러한 텍스트가 점점 많아지면 감당하기 어렵죠 그때 이러한 데이터를 담아줄 바구니가 필요하죠
            Text(place)
            Text(place)
            Text(place)
            Text(place)
            //
            
            Text("\(name)님 안녕하세요~!")
            Text("\(name)님의 포인트는 340점 입니다.")
            Text("\(name)님 안녕히 가세요")
            Text(name)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
