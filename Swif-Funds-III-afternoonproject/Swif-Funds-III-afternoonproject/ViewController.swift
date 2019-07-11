//
//  ViewController.swift
//  Swif-Funds-III-afternoonproject
//
//  Created by Uptiie on 6/3/19.
//  Copyright © 2019 Uptiie. All rights reserved.
//

import UIKit

enum CurrencyType {
    case cad
    case peso
}

class ViewController: UIViewController {
    
    var currencyType: CurrencyType = .cad
    
    var exchangeRateCad = 3.0
    var exchangeRatePeso = 5.0
    
    
    @IBOutlet weak var fromCurrencyTextField: UITextField!
    @IBOutlet weak var toCurrencyTextField: UITextField!
    @IBOutlet weak var toCurrencyLabel: UILabel!
    
    
    @IBOutlet weak var cadButton: UIButton!
    @IBOutlet weak var pesoButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func cadButtonPressed(_ sender: Any) {
        if cadButton.isSelected == true {
            toCurrencyLabel.text = "Currency (CAD)"
        }
        
    }
    
    @IBAction func pesoButtonPressed(_ sender: Any) {
        if pesoButton.isSelected == true {
            toCurrencyLabel.text = "Currency (PESO)"
        }
        
    }
    
    @IBAction func convertButtonPressed(_ sender: Any) {
        guard let convertCurrencyString = fromCurrencyTextField.text,
            let currency = Double(convertCurrencyString) else { return }
        
        let convertedCurrency = convert(dollars: currency)
        toCurrencyTextField.text = "\(convertedCurrency)"
        
        
        
    }
    
    //Convert currency into CAD/Peso from USD
    // Return Converted Amount
    
    func convert(dollars: Double) -> Double {
        if CurrencyType.cad  == .cad {
            let canadianConvert = dollars * exchangeRateCad
            return canadianConvert
        } else {
            let pesoConvert = dollars * exchangeRatePeso
            return pesoConvert
        }
    }
}
