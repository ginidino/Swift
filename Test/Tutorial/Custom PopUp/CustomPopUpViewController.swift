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
    
    @IBOutlet weak var squadBtn: UIButton!
    
    @IBOutlet weak var youtubeBtn: UIButton!
    
    var welcomBtnCompletionClosure: (() -> Void)?
    
    var myPopUpDelegate : PopUpDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("CustomPopUpViewController - viewDidLoad() called")
        contentView.layer.cornerRadius = 30
        welcomBtn.layer.cornerRadius = 10
        squadBtn.layer.cornerRadius = 10
        youtubeBtn.layer.cornerRadius = 10
    }
    
    
    //MARK: - IBActions
    
    @IBAction func onyoutubeBtnClick(_ sender: UIButton) {
        print("CustomPopUpViewController - onyoutubeBtnClick()")
        
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: notificationName), object: nil)
        
        dismiss(animated: true, completion: nil)
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
    
    @IBAction func onSquadBtnClick(_ sender: UIButton) {
        print("CustomPopUpViewController - onSquadBtnClick() called")
        
        myPopUpDelegate?.onSquadBtnClick()
        self.dismiss(animated: true, completion: nil)
    }
    
}
