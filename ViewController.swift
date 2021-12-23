//
//  ViewController.swift
//  TipMe!
//
//  Created by Varun Valiveti on 7/21/21.
//

import UIKit

class ViewController: UIViewController {

 //   @IBOutlet weak var billAmountTxt: UITextField!
   // @IBOutlet weak var tipPercentTxt: UITextField!
   // @IBOutlet weak var calculateTipBtn: UIButton!
    //@IBOutlet weak var tipAmountLbl: UILabel!
    //@IBOutlet weak var billTotalLbl: UILabel!
    
    @IBOutlet weak var billAmountTxt: UITextField!
    @IBOutlet weak var tipPercentTxt: UITextField!
    @IBOutlet weak var calculateTipBtn: UIButton!
    
    @IBOutlet weak var tipAmountLbl: UILabel!
    
    @IBOutlet weak var billTotalLbl: UILabel!
    @IBAction func calculateTip(_ sender: Any){
        
        var billAmount:Double = 0.0
        var tipAmount:Double = 0.0
        if !(billAmountTxt.text=="") && !(tipPercentTxt.text=="")  {
            billAmount = Double(billAmountTxt.text!)!
           
            tipAmount = (Double(tipPercentTxt.text!)! / 100)*billAmount
            tipAmountLbl.text = String(format: "$%.02f",tipAmount)
            billTotalLbl.text = String(format: "$%.02f",  billAmount + tipAmount)
        }
            
       
        
    }
    
    
    override func viewDidLoad(){
        super.viewDidLoad()

        let kb = UIToolbar()
        kb.sizeToFit()
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(doneClick))
        kb.items = [doneButton]
        billAmountTxt.inputAccessoryView = kb;
        tipPercentTxt.inputAccessoryView = kb;
    }

    @objc func doneClick(){
        self.view.endEditing(true)
    }

}

