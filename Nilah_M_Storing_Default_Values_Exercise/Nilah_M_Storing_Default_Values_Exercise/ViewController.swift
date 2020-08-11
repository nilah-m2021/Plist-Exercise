//
//  ViewController.swift
//  Nilah_M_Storing_Default_Values_Exercise
//
//  Created by Nilah Marshall on 8/10/20.
//  Copyright © 2020 Nilah Marshall. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func saveButton(_ sender: Any) {
   
        UserDefaults.standard.set(nilahsTXTField.text, forKey: "Text")
        UserDefaults.standard.set(nilahsSwitch.isOn, forKey: "Switch")
        UserDefaults.standard.set(nilahsSlider.value, forKey: "Slider")
        }
    
    @IBAction func loadButton(_ sender: Any) {
        nilahsSwitch.isOn = UserDefaults.standard.bool(forKey: "Switch")
        nilahsSlider.value = UserDefaults.standard.float(forKey: "Slider")
        nilahsTXTField.text = UserDefaults.standard.string(forKey: "Text")
        
    }
    
    @IBAction func deleteButton(_ sender: Any) {
        nilahsSwitch.isOn = true
        nilahsSlider.value = 0.5
        nilahsTXTField.text = ""
        
    }
    
    
    @IBOutlet var nilahsTXTField: UITextField!
    
    @IBOutlet var nilahsSlider: UISlider!
    
    @IBOutlet var nilahsSwitch: UISwitch!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

