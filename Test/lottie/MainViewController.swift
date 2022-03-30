//
//  ViewController.swift
//  NiceApp
//
//  Created by injae Lee on 2022/03/30.
//

import UIKit
import Lottie

class MainViewController: UIViewController {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.text = "Main Display"
        label.font = UIFont.boldSystemFont(ofSize: 70)
        return label
    }()
    
    let animationView: AnimationView = {
        let aniView = AnimationView(name: "100270-user-experience")
        aniView.frame = CGRect(x:0, y:0, width: 400, height: 400)
        
        aniView.contentMode = .scaleAspectFill
        
        return aniView
    }()

    // When the view is created
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .black
        view.addSubview(animationView)
        animationView.center = view.center
        
        
        
        // animation execution
        animationView.play { (finish) in
            
            print("It's done")
            self.view.backgroundColor = .white
            
            self.animationView.removeFromSuperview()
            
            
            self.view.addSubview(self.titleLabel)
            
            self.titleLabel.translatesAutoresizingMaskIntoConstraints = false
            self.titleLabel.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
            self.titleLabel.centerYAnchor.constraint(equalTo: self.view.centerYAnchor).isActive = true
        }
    }


} 

