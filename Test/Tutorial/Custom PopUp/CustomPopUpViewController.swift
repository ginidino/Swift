//
//  CustomPopUpViewController.swift
//  CustomPupup_tutorial
//
//  Created by injae Lee on 2022/04/04.
//

import UIKit

class CustomPopUpViewController: UIViewController {
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var bgBtn: UIButton!
    @IBOutlet weak var welcomBtn: UIButton!
    
    var welcomBtnCompletionClosure: (() -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("CustomPopUpViewController - viewDidLoad() called")
        contentView.layer.cornerRadius = 30
        welcomBtn.layer.cornerRadius = 10
    }
    
    @IBAction func bgBtnClick(_ sender: UIButton) {
        print("CustomPopUpViewController - bgBtnClick() called")
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func welcomBtnClick(_ sender: UIButton) {
        print("CustomPopUpViewController - welcomBtnClick() called")
        
        self.dismiss(animated: true, completion: nil)
        
        // call completion block
        if let welcomBtnCompletionClosure = welcomBtnCompletionClosure {
            // inform the main
            welcomBtnCompletionClosure()
        }
        
    }
}
