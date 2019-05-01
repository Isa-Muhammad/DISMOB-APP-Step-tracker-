//
//  infoViewController.swift
//  DISMOB APP[
//
//  Created by Isa Muhammad on 23/04/2019.
//  Copyright © 2019 Isa Muhammad. All rights reserved.
//

import UIKit
class infoViewController: UIViewController ,  UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var sexTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    
    let userID = UUID().uuidString
    @IBAction func nextButton(_ sender: Any) {
        //guard nameTextField.text != nil else { return }
        let successfullyRegistered = UserService.shared.register(name: nameTextField.text, age: ageTextField.text, sex: sexTextField.text, height: heightTextField.text, weight: weightTextField.text)
        if successfullyRegistered {
            performSegue(withIdentifier: "initSeg", sender: self)
            _ = [
                "name": "abc",
                "age": 0,
                "sex": true,
                "height": 0,
                "weight": 0,
                ] as [String: Any]
        }

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //let homeController = segue.destination as! homeViewController
        //homeController.myString = nameTextField.text!
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameTextField.delegate = self
        self.ageTextField.delegate = self
        // Do any additional setup after loading the view.
    }
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.resignFirstResponder()
    }


}

