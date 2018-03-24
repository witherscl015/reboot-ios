//
//  ViewController.swift
//  Reboot
//
//  Created by Jamone Kelly on 3/24/18.
//  Copyright © 2018 Carson. All rights reserved.
//

import UIKit

class Onboarding: UIViewController {
    @IBOutlet weak var signUpBtn: UIButton!
    @IBOutlet weak var signInBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Styling the sign up button
        self.signUpBtn.layer.cornerRadius = 10.0
        self.signUpBtn.layer.borderWidth = 0.8
        self.signUpBtn.layer.borderColor = UIColor.green.cgColor
        self.signUpBtn.setTitle("Sign Up", for: .normal)
        self.signUpBtn.setTitleColor(UIColor.black, for: .normal)
        
        // Styling the sign in button
        self.signInBtn.layer.cornerRadius = 10.0
        self.signInBtn.layer.borderWidth = 0.8
        self.signInBtn.layer.borderColor = UIColor.green.cgColor
        self.signInBtn.setTitle("Sign In", for: .normal)
        self.signInBtn.setTitleColor(UIColor.black, for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

