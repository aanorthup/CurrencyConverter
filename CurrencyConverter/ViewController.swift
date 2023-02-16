//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by user231925 on 2/15/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usdAmount: UIStackView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func yen(_ sender: UISwitch) {
        if sender.isOn {
            yen = true
        } else {
            yen = false
        }
    }
    
    @IBAction func pound(_ sender: UISwitch) {
        if sender.isOn {
            pound = true
        } else {
            pound = false
        }
    }
    
    @IBAction func euro(_ sender: UISwitch) {
        if sender.isOn {
            euro = true
        } else {
            euro = false
        }
    }
    
    @IBAction func cad(_ sender: UISwitch) {
        if sender.isOn {
            cad = true
        } else {
            cad = false
        }
    }
    
    @IBAction func convert(_ sender: UIButton) {
        //pull from converterlogic
        
        self.performSegue(withIdentifier: "toConverter", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toConverter" {
            let navigation = segue.destination as! ConverterView
            //navigation.amount = amount
        }
        
    }
    
}

