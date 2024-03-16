//
//  Heatvc.swift
//  demoo
// 
//  Created by Manish Bhanushali on 22/10/23.
//

import UIKit

class Heatvc : UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var unitPicker: UIPickerView!

    @IBOutlet weak var convert : UIButton!
    var units = ["Celsius", "Fahrenheit", "Kelvin", "Rankine", "Réaumur"]
    var selectedUnit: String = "Celsius"

    override func viewDidLoad() {
        super.viewDidLoad()
        unitPicker.dataSource = self
        unitPicker.delegate = self
        convert.layer.cornerRadius = 20
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
            let result = convertTemperature(value: inputValue, fromUnit: selectedUnit)
            resultLabel.text = "\(result) \(selectedUnit)"
        } else {
            resultLabel.text = "Invalid Input"
        }
    }

    func convertTemperature(value: Double, fromUnit: String) -> Double {
        switch fromUnit {
        case "Celsius":
            return value
        case "Fahrenheit":
            return (value - 32) * 5/9
        case "Kelvin":
            return value - 273.15
        case "Rankine":
            return (value - 491.67) * 5/9
        case "Réaumur":
            return value * 5/4
        default:
            return 0.0
        }
    }
}
