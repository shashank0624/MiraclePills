//
//  ViewController.swift
//  MiraclePills
//
//  Created by Girish Sami on 11/30/17.
//  Copyright © 2017 PR. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource, UITextFieldDelegate {

    
    @IBOutlet weak var miraclePillsImageView: UIImageView!
    @IBOutlet weak var miraclePillsLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var lineView: UIView!
    @IBOutlet weak var fullNameLbl: UILabel!
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var streetLbl: UILabel!
    @IBOutlet weak var streetTextField: UITextField!
    @IBOutlet weak var cityLbl: UILabel!
    @IBOutlet weak var cityTextField: UITextField!
    @IBOutlet weak var stateLbl: UILabel!
    @IBOutlet weak var stateTextField: UITextField!
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var countryTextField: UITextField!
    @IBOutlet weak var zipCodeLbl: UILabel!
    @IBOutlet weak var zipCodeTextField: UITextField!
    
    @IBOutlet weak var buyNowBtn: UIButton!
    @IBOutlet weak var successImageView: UIImageView!
    
    @IBOutlet weak var statePicker: UIPickerView!
    
    let states = ["Uttar Predesh","Gujrat","Jammu & Kashmir", "Punjab", "Karnataka", "Rajasthan", "Delhi"]
    var isChooseStatePickerHidden = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    @IBAction func buyBtnPressed(_ sender: UIButton) {
        miraclePillsImageView.isHidden = true
        miraclePillsLbl.isHidden = true
        priceLbl.isHidden = true
        lineView.isHidden = true
        fullNameLbl.isHidden = true
        fullNameTextField.isHidden = true
        streetLbl.isHidden = true
        streetTextField.isHidden = true
        cityLbl.isHidden = true
        cityTextField.isHidden = true
        stateLbl.isHidden = true
        stateTextField.isHidden = true
        countryLbl.isHidden = true
        countryTextField.isHidden = true
        zipCodeLbl.isHidden = true
        zipCodeTextField.isHidden = true
        buyNowBtn.isHidden = true
        successImageView.isHidden = false
    }
    
    
    //MARK:- UIPICKERVIEW DATASOURCE METHODS
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePicker.isHidden = true
        isChooseStatePickerHidden = true
        stateTextField.text = states[row]
        countryLbl.isHidden = false
        countryTextField.isHidden = false
        zipCodeLbl.isHidden = false
        zipCodeTextField.isHidden = false
        buyNowBtn.isHidden = false
    }
    
    //MARK:- UITEXTFIELD DELEGATE METHODS
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if textField.tag == 4{
            statePicker.isHidden = false
            countryLbl.isHidden = true
            countryTextField.isHidden = true
            zipCodeLbl.isHidden = true
            zipCodeTextField.isHidden = true
            buyNowBtn.isHidden = true
            return false
        }else{
            return true
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

}

