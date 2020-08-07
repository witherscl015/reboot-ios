//
//  SignUpVC.swift
//  Reboot
//
//  Created by Jamone Kelly on 4/20/18.
//  Copyright © 2018 Carson. All rights reserved.
//

import UIKit
import Firebase

class SignUpCoachVC: UIViewController {
    let schoolList = ["South Rowan High School", "North Rowan High School", "East Rowan High School", "West Rowan High School"]
    @IBOutlet weak var schoolPickerView: UIPickerView!
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var emailAddressTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Create Account", style: .done, target: self, action: nil)
        
        self.schoolPickerView.dataSource = self
        self.schoolPickerView.delegate = self
    }
}

extension SignUpCoachVC: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return schoolList[row]
    }
}

extension SignUpCoachVC: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return schoolList.count
    }
}
