//
//  ViewController.swift
//  Food Tracker App
//
//  Created by Adam Ameen on 10/18/20.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        nameTextField.delegate = self
    }

    
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default"
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
     }
    
     func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
     }
    
    @IBAction func chooseImage(_ sender: UITapGestureRecognizer) {
        mealNameLabel.text = "Going to image..."
    }
    
}

