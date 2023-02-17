//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by user231925 on 2/15/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usdAmount: UIStackView!
    
    var converter = ConverterLogic()
    
    @IBOutlet weak var usdLabel: UITextField!
    
    var usd : String = ""

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func yenSwitch(_ sender: UISwitch) {
        converter.yenCheck(sender.isOn)
    }
    
    
    @IBAction func gbpSwitch(_ sender: UISwitch) {
        converter.poundCheck(sender.isOn)
    }
    
    
    @IBAction func eurSwitch(_ sender: UISwitch) {
        converter.euroCheck(sender.isOn)
    }
    
    
    @IBAction func cadSwitch(_ sender: UISwitch) {
        converter.cadCheck(sender.isOn)
    }
    
    @IBAction func convert(_ sender: UIButton) {
        //pull from converterlogic
        //usd = converter.convert()
        self.performSegue(withIdentifier: "toConverter", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toConverter" {
            let navigation = segue.destination as! ConverterView
            navigation.usd = usd
        }
        
    }
    
}

