//
//  ConverterLogic.swift
//  CurrencyConverter
//
//  Created by user231925 on 2/15/23.
//

import Foundation

struct ConverterLogic {
    
    var yen = true
    var pound = true
    var euro = true
    var cad = true
    
    
   
    
    mutating func yenCheck(_ yenValue: Bool) {
        if yenValue {
            yen = true
        } else {
            yen = false
        }
    }
    
    mutating func poundCheck(_ poundValue: Bool) {
        if poundValue {
            pound = true
     } else {
            pound = false
        }
        
    }
    
    mutating func euroCheck(_ euroValue: Bool) {
        if euroValue {
            euro = true
        } else {
            euro = false
        }
    }
    
    mutating func cadCheck(_ cadValue: Bool) {
        if cadValue {
            cad = true
        } else {
            cad = false
        }
    }
    
    mutating func convertYen() -> String {
        return String(yen)
    }
    
    
    
}
