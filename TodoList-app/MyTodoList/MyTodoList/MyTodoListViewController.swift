
//  MyTodoListViewController.swift
//  MyTodoList
//
//  Created by Developer_P on 3/29/24.

import UIKit
// command+shift+L:UIKit 사용

// Tip: class = 클로저 사용 가능
class MyTodoListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView! // Main과의 IBOutlet 연결을 통해 제어, 복수의 일정을 등록하기 위함.
    
    var data: [MyTodo] = [MyTodo(id: .init(),
                                 text: "A"),
                          MyTodo(id: .init(),
                                 text: "B"),
                          MyTodo(id: .init(),
                                 text: "C")
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self // TableView의 데이터를 전달할 수 있는 역할을 할수있는 객체를 이 프로퍼티 안에 넣어주어야 합니다.
        // self는 MyTodoListViewController가 UITableViewDataSource를 채택을 하였기 때문에 작성할 수 있는 것입니다.
        tableView.delegate = self // Call을 어떻게 구성할 것인가의 대한 역할을 하는 객체를 넣어주어야 합니다.
    }
    
}
extension MyTodoListViewController: UITableViewDataSource {
    // 섹션별로 섹션안에 들어있는 row의 개수를 시스템이 나에게 물어보는 메서드 입니다.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { // 섹션에 들어갈 셀의 개수반환
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // withIdentifier는 셀을 구분 하기 위해서 반드시 써야 합니다.
        let cell = tableView.dequeueReusableCell(withIdentifier: MyTodoListTableViewCell.myUser,
                                                 for: indexPath)
        return cell
    }
    // TableView를 가지고 있는 컨트롤러를 프로토콜 타입으로 취급 받기 위해서 여기에 채택을 시켜주어야 합니다. 이는 위 @IBOutlet에도 입력이 가능한데, 구분을 좀더 명확하게 하기 위해 extension을 추가하여 진행한 모습입니다.
}
extension MyTodoListViewController: UITableViewDelegate {
    
}
