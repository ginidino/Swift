//
//  ViewController.swift
//  CustomPupup_tutorial
//
//  Created by injae Lee on 2022/04/04.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var createPopUpBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onCreatePopUpClick(_ sender: UIButton) {
        
        print("ViewController - onCreatePopUpClick() called ")
        createPopUpBtn.layer.cornerRadius = 10
        
        // import storyboard
        let storyboard = UIStoryboard.init(name: "Popup", bundle: nil)
        
        // import ViewController via storyboard
        let customPopUpVC = storyboard.instantiateViewController(withIdentifier: "AlertPopUpVC") as! CustomPopUpViewController
        
        // Style where the viewcontroller displays
        customPopUpVC.modalPresentationStyle = .overCurrentContext
        
        // Style where the view controller disappears
        customPopUpVC.modalTransitionStyle = .crossDissolve
        
        customPopUpVC.welcomBtnCompletionClosure = {
            print("Completion block is called.")
            let websiteUrl = URL(string: "http://www.kal-jumbos.co.kr/main/main.php")
            self.myWebView.load(URLRequest(url:  websiteUrl!))
        }
        
        self.present(customPopUpVC, animated: true, completion: nil)
    }
}
