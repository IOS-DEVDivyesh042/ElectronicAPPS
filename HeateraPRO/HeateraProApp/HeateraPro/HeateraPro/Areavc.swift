//
//  Areavc.swift
//  demoo
//
//  Created by Manish Bhanushali on 22/10/23.
//

import UIKit

class Areavc: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate  {

    @IBOutlet weak var btnc: UIButton!
    

        @IBOutlet weak var inputTextField: UITextField!
        @IBOutlet weak var resultLabel: UILabel!
        @IBOutlet weak var unitPicker: UIPickerView!
    @IBOutlet weak var convert : UIButton!
        var units = ["Square Meters", "Square Feet", "Square Yards", "Square Kilometers", "Acres", "Hectares"]
        var selectedUnit: String = "Square Meters"

        override func viewDidLoad() {
            super.viewDidLoad()
            unitPicker.dataSource = self
            unitPicker.delegate = self
            
            
            btnc.layer.cornerRadius = 20
        }

        // UIPickerViewDataSource methods
        func numberOfComponents(in pickerView: UIPickerView) -> Int {
            return 1
        }

        func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
            return units.count
        }

        // UIPickerViewDelegate methods
        func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
            return units[row]
        }

        func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
            selectedUnit = units[row]
        }

        @IBAction func convertButtonTapped(_ sender: UIButton) {
            if let inputValue = Double(inputTextField.text ?? "") {
                let result = convertArea(value: inputValue, fromUnit: selectedUnit)
                resultLabel.text = "\(result) \(selectedUnit)"
            } else {
                resultLabel.text = "Invalid Input"
            }
        }

        func convertArea(value: Double, fromUnit: String) -> Double {
            let squareMeters = value
            switch fromUnit {
            case "Square Meters":
                return squareMeters
            case "Square Feet":
                return squareMeters * 10.7639
            case "Square Yards":
                return squareMeters * 1.19599
            case "Square Kilometers":
                return squareMeters / 1_000_000
            case "Acres":
                return squareMeters * 0.000247105
            case "Hectares":
                return squareMeters * 0.0001
            default:
                return 0.0
            }
        }
    }

