//
//  RegisterViewController.swift
//  User
//
//  Created by Vandan  on 9/20/19.
//  Copyright © 2019 Vandan Inc. All rights reserved.
//

import UIKit


class RegisterViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet var tfName : UITextField!
    @IBOutlet var tfAddress : UITextField!
    @IBOutlet var tfPhone : UITextField!
    @IBOutlet var tfEmail : UITextField!
    
    
    
    
    @IBOutlet var dpDate : UIDatePicker!
    
    @IBOutlet var slAge : UISlider!
    @IBOutlet var lbAge : UILabel!
    
    func doTheUpdate(){
        let data : myData = .init()
        data.initWithStuff( theName: tfName.text! , theEmail: tfEmail.text!)
    }
    
    func updateLabel(){
        let age = slAge.value
        let strAge = String(format: "%.f", age)
        lbAge.text = strAge
    }
    
    @IBAction func sliderValueChanged(sender : UISlider)
    {
        updateLabel()
    }
    
    @IBAction func showAlert(sender: UIButton){
        
        let myAlert = UIAlertController(title: "Success", message: "Thanks for your time", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        {(ACTION) in print("OK button tapped")
            
        }
        myAlert.addAction(okAction)
        present(myAlert,animated: true)
        
    }
    
    
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return textField.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateLabel()
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */

    
    

    }
    

   
