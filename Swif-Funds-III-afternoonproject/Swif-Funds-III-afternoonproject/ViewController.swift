//
//  ViewController.swift
//  Swif-Funds-III-afternoonproject
//
//  Created by Uptiie on 6/3/19.
//  Copyright © 2019 Uptiie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
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
    }
    @IBAction func pesoButtonPressed(_ sender: Any) {
    }
    @IBAction func covertButtonPressed(_ sender: Any) {
    }
    
    enum CurrencyType {
        case cad
        case peso
    }
    
    var currencyType = CurrencyType.cad
    
    func convert(dollars: Double, to unit: CurrencyType) -> Double {
        if let toCurrencyTextField.text: String? = CurrencyType.cad {
            return CurrencyType 
        }
    }


    
}
