//
//  Lengthvc.swift
//  demoo
//
//  Created by Manish Bhanushali on 22/10/23.
//

import UIKit

class Lengthvc : UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var unitPicker: UIPickerView!
    @IBOutlet weak var convert : UIButton!
    var units = ["Meters", "Feet", "Yards", "Kilometers", "Miles"]
    var selectedUnit: String = "Meters"

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
            let result = convertLength(value: inputValue, fromUnit: selectedUnit)
            resultLabel.text = "\(result) \(selectedUnit)"
        } else {
            resultLabel.text = "Invalid Input"
        }
    }

    func convertLength(value: Double, fromUnit: String) -> Double {
        let meters = value
        switch fromUnit {
        case "Meters":
            return meters
        case "Feet":
            return meters * 0.3048
        case "Yards":
            return meters * 0.9144
        case "Kilometers":
            return meters / 1000
        case "Miles":
            return meters / 1609.344
        default:
            return 0.0
        }
    }
}
