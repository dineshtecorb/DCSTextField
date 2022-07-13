//
//  ViewController.swift
//  DCSTextfield
//
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var textfield:DCSTextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        textfield.textColor = .black
        textfield.backgroundColor = .white
        textfield.placeHolderColor = .lightGray
        // Mandatory mark in textField
        textfield.setupPlaceholder()
        textfield.placeholder = "Username "
        textfield.isError = true
        textfield.errorDelimeter = "*"
        textfield.errorColor = .red
        // Do any additional setup after loading the view.
    }


}

