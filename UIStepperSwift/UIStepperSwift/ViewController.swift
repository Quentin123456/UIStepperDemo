//
//  ViewController.swift
//  UIStepperSwift
//
//  Created by Quentin Zang on 2019/12/14.
//  Copyright © 2019 臧乾坤. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var stepper : UIStepper!
       var valueLabel : UILabel!
       
       
       override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
           self.stepper = UIStepper(frame: CGRect(x: 100, y: 100, width: 100, height: 30))
           self.stepper.maximumValue = 100
           self.stepper.minimumValue = 0
           self.stepper.stepValue = 10
           self.stepper.layer.masksToBounds = true
           self.stepper.layer.cornerRadius = 10
           self.stepper.backgroundColor = .red
           self.stepper.addTarget(self, action: #selector(ViewController.stepperValueChanged(_:)), for: .valueChanged)
           self.view.addSubview(self.stepper)
           self.valueLabel = UILabel(frame: CGRect(x: 200, y: 200, width: 100, height: 30))
           self.view.addSubview(self.valueLabel)
           self.valueLabel.text = String(self.stepper.value)
           
           
       }
       
       @objc func stepperValueChanged(_ sender:UIStepper) {
           self.valueLabel.text = "\(sender.value)"
       }
}

