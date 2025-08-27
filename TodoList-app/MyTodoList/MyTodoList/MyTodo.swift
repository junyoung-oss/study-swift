
//  MyTodo.swift
//  MyTodoList
//
//  Created by Developer_P on 3/29/24.

import Foundation

// 데이터 모델을 선언 해야하니까 struct(구조체) 사용
struct MyTodo {
    var id: UUID // 요구사항
    var text: String // 할일에 대한 내용
    var isCompleted: Bool = false // 스위치를 확인하기 위한 내용, true = 완료 | false = 미완
}
