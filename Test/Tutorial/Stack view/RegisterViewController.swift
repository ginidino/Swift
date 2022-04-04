//
//  RegisterViewController.swift
//  NavigationViewController_tutorial
//
//  Created by injae Lee on 2022/03/31.
//

import UIKit

class RegisterViewController: UIViewController {
    
    @IBOutlet weak var btnForLoginViewController: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.navigationController?.isNavigationBarHidden = true
    }

    @IBAction func onLoginViewControllerBtnClick(_ sender: UIButton) {
        print("RegisterViewController - onLoginViewControllerBtnClick() called // click on the login button")
        // pop a navigation view controller
        self.navigationController?.popViewController(animated: true)
    }
    

}
