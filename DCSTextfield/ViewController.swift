//
//  ViewController.swift
//  DCSTextfield
//
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    
    
    @IBOutlet weak var textfield:DCSTextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        textfield.delegate = self
        textfield.textColor = .black
        textfield.backgroundColor = .white
        textfield.placeHolderColor = .lightGray
        // Mandatory mark in textField
        textfield.setupPlaceholder()
        
        //MARK: Set placeholder text before error mark character
            textfield.placeholder = "Phone number "
        
        //MARK: Set error mark character
            textfield.isError = true
        
        //MARK: Set error mark character
            textfield.errorDelimeter = "*"
    
        //MARK: Set error mark color
            textfield.errorColor = .red
        
        //MARK: Set Allowed characters
        textfield.allowedCharInString = "+0123456789"
        textfield.maxLength = 13
        textfield.valueType = .phoneNumberWithPlus
        
        // MARK: New updates add corner and border color and Width
        
        textfield.cornerRadius = 6.0
        textfield.borderColor = .red
        textfield.borderWidth = 1.5
        
        // Do any additional setup after loading the view.
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
                if let ytextfield = textfield{
                    return ytextfield.verifyFields(shouldChangeCharactersIn: range, replacementString: string)
        }
        return true
    }

}

