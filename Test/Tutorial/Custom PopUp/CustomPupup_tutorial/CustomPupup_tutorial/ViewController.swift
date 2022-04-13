//
//  ViewController.swift
//  CustomPupup_tutorial
//
//  Created by injae Lee on 2022/04/04.
//

import UIKit
import WebKit

let notificationName = "BtnNotification"

class ViewController: UIViewController, PopUpDelegate {
    

    @IBOutlet weak var myWebView: WKWebView!
    @IBOutlet weak var createPopUpBtn: UIButton!
    
    // ViewController가 memory에서 해제가 될때
    deinit {
        NotificationCenter.default.removeObserver(self) // memory 해제
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Be equipped with a broadcast receiver called notification
        NotificationCenter.default.addObserver(self, selector: #selector(loadWebView), name: NSNotification.Name(rawValue: notificationName), object: nil)
        
    }

    @objc fileprivate func loadWebView() {
        
        print("ViewController - loadWebView()")
        let youtubeurl = URL(string: "https://www.youtube.com/c/kaljumbos")
        self.myWebView.load(URLRequest(url:  youtubeurl!))
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
        
        customPopUpVC.myPopUpDelegate = self
        
        
        self.present(customPopUpVC, animated: true, completion: nil)
    }
    
    //MARK: - PopUpDelegate methods
    func onSquadBtnClick() {
        print("ViewController - onSquadBtnClick() called")
        let websiteUrl = URL(string: "https://www.instagram.com/kal_jbos/")
        self.myWebView.load(URLRequest(url:  websiteUrl!))
    }
}
