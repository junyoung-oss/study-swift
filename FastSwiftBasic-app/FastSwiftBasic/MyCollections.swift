//
//  MyCollections.swift
//  FastSwiftBasic
//
//  Created by Developer_P on 2/29/24.
//

import SwiftUI

struct MyCollections: View {
    
    let name1: String = "leeo" //데이터가 한번만 들어가고 바꿀 수 없는 상수
    var name2: String = "leeo" //데이터가 언제든지 바뀔 수 있는 변수
    
    var foods: [String] = ["aggs","bananas","beans"]
    //var jazzs: Array<String> = ["A","B","C"] 이렇게도 가능한데, 많은 개발자 분들은 하지 않습니다.
    var jazzs: Set<String> = ["A","B","C"]
    var hiphop: Set<String> = ["A","B","C"]
    var koEngDict = ["사과" : "Apple"]
    
    
    var body: some View {
        VStack {
            Text(koEngDict["사과"]!)
            Text(koEngDict["바나나"]!)
            Text(hiphop.intersection(jazzs).description)
//            Text(foods[0])
//            Text(foods[2])
            Button(action: {
                var intersectionMusic = hiphop.intersection(jazzs)
                intersectionMusic.description
            }, label: {
                Text("hit!")
            })
            Text(foods[2])
        }
    }
}

#Preview {
    MyCollections()
}
