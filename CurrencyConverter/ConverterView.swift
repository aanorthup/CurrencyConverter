//
//  ConverterView.swift
//  CurrencyConverter
//
//  Created by user231925 on 2/15/23.
//

import UIKit

class ConverterView: UIViewController {

    var usd : String = ""
    var converter = ConverterLogic()
    
    @IBOutlet weak var usdAmount: UILabel!
    @IBOutlet weak var yenAmount: UILabel!
    @IBOutlet weak var poundAmount: UILabel!
    @IBOutlet weak var euroAmount: UILabel!
    @IBOutlet weak var cadAmount: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        usdAmount.text = "Amount in USD: \(usd)"
        yenAmount.text = converter.convertYen()

        // Do any additional setup after loading the view.
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
