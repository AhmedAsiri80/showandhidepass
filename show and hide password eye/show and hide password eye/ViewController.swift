//
//  ViewController.swift
//  show and hide password eye
//
//  Created by Ahmed Assiri on 09/09/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    var iconClick = false
    let imageicon = UIImageView()

    @IBOutlet weak var myTextFeild: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        imageicon.image = UIImage(named: "closeeye")
        
        let contenView = UIView()
        contenView.addSubview(imageicon)
        
        // frame ايطار الصورة
        contenView.frame = CGRect(x: 0, y: 0, width: UIImage(named: "closeeye")!.size.width, height: UIImage(named: "closeeye")!.size.height)
        
        
        imageicon.frame = CGRect(x: -10, y: 0, width: UIImage(named: "closeeye")!.size.width, height: UIImage(named: "closeeye")!.size.height)
        
        myTextFeild.rightView = contenView
        myTextFeild.rightViewMode = .always
        
        
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        imageicon.isUserInteractionEnabled = true
        imageicon.addGestureRecognizer(tapGestureRecognizer)

    }
    
    // قاعدة اذا if 
    @objc func imageTapped(tapGestureRecognizer:UITapGestureRecognizer){
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        
        if iconClick {
            iconClick = false
            tappedImage.image = UIImage(named: "openeye")
            myTextFeild.isSecureTextEntry = false
            
        }
        else {
            iconClick = true
            tappedImage.image = UIImage(named: "closeeye")
            myTextFeild.isSecureTextEntry = true
            
        }
        
    }

}

