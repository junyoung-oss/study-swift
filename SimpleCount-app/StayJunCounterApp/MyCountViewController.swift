//
//  ViewController.swift
//  StayJunCounterApp
//
//  Created by Developer_P on 4/9/24.
//

import UIKit

class MyCountViewController: UIViewController {
    
    @IBOutlet weak var cuntUpDown: UILabel!
    var count: Int = 0 // 카운터를 해라, 정수로, 0부터
    
    @IBAction func CountUp(_ sender: Any) { // 증가 되었을 때 ~
        count += 1 // 1씩 증가하라
        textLabelUpdate() // 현재상태 반영
    }
    
    @IBAction func CountDown(_ sender: Any) {// 감소 되었을 때 ~
        count -= 1 // 1씩 감소하라
        textLabelUpdate() // 현재상태 반영
    }
    
    // 업데이트 반영에 대한 메서드 정의
    func textLabelUpdate () { // count값을 Label에 text에 반영 해주자~
        cuntUpDown.text = String(count)
    }
    
    override func viewDidLoad() { // 생명을 불어 넣어줍니다~
        super.viewDidLoad()
        textLabelUpdate()
        // Do any additional setup after loading the view.
    }
}

