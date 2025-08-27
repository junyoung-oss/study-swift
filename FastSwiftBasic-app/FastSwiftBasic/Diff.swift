//
//  Diff.swift
//  FastSwiftBasic
//
//  Created by Developer_P on 3/4/24.
//
// 클래스 - 
import SwiftUI

struct Diff: View {
    let myCar = Car(name: "A", owner: "B")
    // @ObservedObject = 관찰 대상
//    @ObservedObject var myKar = Kar(name: "C", owner: "D")
    @State var name: String = "" 
    var body: some View {
        VStack {
//            Text("\(myKar.name)의 주인은 \(myKar.owner)입니다.")
            
            TextField("Placeholder", text: $name)
            
            Button {
                //동생한테 차를 팔고 싶은 경우
//                var broCar = myKar
//                broCar.name = "동생차"
//                broCar.owner = "동생"
//                
//                myCar.sayHi()
//                broCar.sayHi()
            } label: {
                Text("출발")
            }
        }
    }
}
//ObservedObject = 관찰을 할 대상
struct Car {
//    let name : String
//    let owner : String
    var name : String
    var owner : String
    
    func sayHi() {
        print("안녕하세요! \(owner)님!")
    }
}
// ObservedObject : 관찰하다.
//struct Kar : ObservedObject {
    // @Published : 배포하다.
//    @Published var name : String
//    var owner : String
//    
//    func sayHi() {
//        print("안녕하세요! \(owner)님!")
//    }
//    
//    init(name: String, owner: String) {
//        self.name = name
//        self.owner = owner
//    }
//}

#Preview {
    Diff()
}
