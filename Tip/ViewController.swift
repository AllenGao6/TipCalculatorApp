//
//  ViewController.swift
//  Tip
//
//  Created by Gao jianxiang on 12/9/20.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var BillAmountTextField: UITextField!
    
    @IBOutlet weak var TipPrice: UILabel!
    @IBOutlet weak var TipPercentage: UILabel!
    @IBOutlet weak var TotalPrice: UILabel!
    @IBOutlet weak var TipControl: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onTap(_ sender: Any) {
    }
    
    
    @IBAction func Calculate(_ sender: Any)  {
        
        let bill = Float(BillAmountTextField.text!) ?? 0
        
        let tip = (round(TipControl.value) / 100) * bill
        
        //let tip = bill * tipPercent
        let total = bill + tip
        
        //update labels
        TipPrice.text = String(format: "$%.2f", tip)
        TotalPrice.text = String(format: "$%.2f", total)
    }
    
    @IBAction func SliderValueChanged(_ sender: UISlider) {
        let currentvalue = Int(round(sender.value))
        
        TipPercentage.text = "\(currentvalue)%"
    }
    @IBAction func SliderMoved(_ sender: UISlider) {
        sender.setValue(Float(Int(round(sender.value))), animated: true)
    }
}

