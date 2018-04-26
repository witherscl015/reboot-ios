//
//  UIButton+Ext.swift
//  Reboot
//
//  Created by Jamone Kelly on 4/20/18.
//  Copyright © 2018 Carson. All rights reserved.
//

import UIKit

extension UIButton {
    func addRebootRoundedBorder() {
        self.layer.cornerRadius = 10.0
        self.layer.borderWidth = 0.8
        self.layer.borderColor = UIColor.green.cgColor
    }
}
