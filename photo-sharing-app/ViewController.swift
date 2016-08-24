//
//  ViewController.swift
//  photo-sharing-app
//
//  Created by Tomomi Tamura on 8/23/16.
//  Copyright © 2016 Tomomi Tamura. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {
    
    @IBOutlet var userName: UITextField!
    
    @IBOutlet var email: UITextField!
    
    @IBOutlet var password1: UITextField!
    
    @IBOutlet var password2: UITextField!
    
    @IBAction func loginPressed(sender: AnyObject) {
        
        self.password2.alpha = 0
    }
    

    @IBAction func signupPressed(sender: AnyObject) {
        
        self.password2.alpha = 1
    }
    
    
    @IBAction func submitPressed(sender: AnyObject) {
        
        
        
    }
    
    @IBOutlet var profileImage: UIImageView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
 
        profileImage.translatesAutoresizingMaskIntoConstraints = true
        
        //Looks for single or multiple taps for keyborad to disaoear
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: "dismissKeyboard")
        view.addGestureRecognizer(tap)
    }
    
    //for keyborad to disaoear
    func dismissKeyboard() {
        view.endEditing(true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

