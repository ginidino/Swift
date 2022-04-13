 //
//  ViewController.swift
//  Photo_tutorial
//
//  Created by injae Lee on 2022/04/13.
//

import UIKit
import YPImagePicker

class ViewController: UIViewController {

    @IBOutlet weak var ProfileImage: UIImageView!
    
    @IBOutlet weak var ProfileChangeBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.ProfileImage.layer.cornerRadius = ProfileImage.frame.height / 2
        self.ProfileChangeBtn.layer.cornerRadius = 10
        
        // set button click action
        self.ProfileChangeBtn.addTarget(self, action: #selector(profileChangeBtnClick), for: .touchUpInside)
    }
    // When the Change Profile button is clicked
    @objc fileprivate func profileChangeBtnClick() {
        print("ViewController - profileChangeBtnClick() called")
        
        // setting th Camera library
        var config = YPImagePickerConfiguration()
        //config.screens = [.library, .photo, .video]
        config.screens = [.library]
        
        let picker = YPImagePicker(configuration: config)
        
        // When the photo is selected
        picker.didFinishPicking { [unowned picker] items, _ in
            if let photo = items.singlePhoto {
                print(photo.fromCamera) // Image source (camera or library)
                print(photo.image) // Final image selected by the user
                print(photo.originalImage) // original image selected by the user, unfiltered
                print(photo.modifiedImage!) // Transformed image, can be nil
                print(photo.exifMeta!) // Print exif meta data of original image.
                // Change the profile image
                self.ProfileImage.image = photo.image
            }
            // Close Photo Selection Window
            picker.dismiss(animated: true, completion: nil)
        }
        //Show photo selection window
        present(picker, animated: true, completion: nil)
    }


}

