//
//  ViewController.swift
//  getInfoNotes
//
//  Created by JAKE KENEFICK on 8/29/23.
//

import UIKit
//comma starts extension
class ViewController: UIViewController, UITextFieldDelegate  {
    
    @IBOutlet weak var labelOutlet: UILabel!
    
    
    @IBOutlet weak var textOutlet: UITextField!
    
    @IBOutlet weak var ageOutlet: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Attaching delegate to text field.
        textOutlet.delegate = self
        ageOutlet.delegate = self
    }

    @IBAction func submitAction(_ sender: UIButton)
    
    {
        textOutlet.resignFirstResponder()
        ageOutlet.resignFirstResponder()
    //Get text out of the text field
        var name = textOutlet.text!
        var age = Int (ageOutlet.text!)
        if let a = age{
        var age10 = a + 10
           
        }
        
        labelOutlet.text = "hellooooo \(name) you are \(age) years old"
        
       
        
    }
    

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    
}

