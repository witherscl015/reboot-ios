//
//  SignUpAthleteVC.swift
//  Reboot
//
//  Created by Jamone Kelly on 4/20/18.
//  Copyright © 2018 Carson. All rights reserved.
//

import UIKit
import Firebase

class SignUpAthleteVC: UIViewController {
    let schoolList = ["South Rowan High School", "North Rowan High School", "East Rowan High School", "West Rowan High School"]
    @IBOutlet weak var schoolPickerView: UIPickerView!
    @IBOutlet weak var coachPickerView: UIPickerView!
    @IBOutlet weak var fullNameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.schoolPickerView.delegate = self
        self.schoolPickerView.dataSource = self
    }
}

extension SignUpAthleteVC: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return schoolList.count
    }
}

extension SignUpAthleteVC: UIPickerViewDelegate {
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return schoolList[row]
    }
}
