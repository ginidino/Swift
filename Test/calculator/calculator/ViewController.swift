//
//  ViewController.swift
//  calculator
//
//  Created by injae Lee on 2022/03/29.
//

import UIKit

class ViewController: UIViewController {
    
    private var count: Int = 0

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var sampleButton: UIButton!
    
    @IBAction func onClickButton(_ sender: Any) {
        count += 1
        titleLabel.text = "클릭했어요! \(count)"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "버튼을 눌러주세요"
        
    }
}

