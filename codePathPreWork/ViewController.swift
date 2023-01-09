//
//  ViewController.swift
//  codePathPreWork
//
//  Created by divya singh on 12/28/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var petStepper: UIStepper!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    
    
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    
    @IBAction func introduceSelfDidTap(_ sender: UIButton) {
        
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
        
        let introduction = "Hello! My name is \(firstNameTextField.text!) \(lastNameTextField.text!). I am a \(year!) year at \(schoolNameTextField.text!). I have \(numberOfPetsLabel.text!) pet(s)! It is \(morePetsSwitch.isOn) that I want more pets."
        
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
               
               
        let action = UIAlertAction(title: "Hi there! Nice to meet you!", style: .default, handler: nil)
               
  
        alertController.addAction(action)
               
        present(alertController, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

