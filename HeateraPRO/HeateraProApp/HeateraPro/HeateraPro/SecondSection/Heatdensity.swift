//
//  Heatdensity.swift
//  demoo
//
//  Created by Manish Bhanushali on 22/10/23.
//

import UIKit

class Heatdensity : UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var unitPicker: UIPickerView!
    @IBOutlet weak var convert : UIButton!
    var units = ["Joules per Cubic Meter (J/m³)", "Calories per Cubic Centimeter (cal/cm³)", "BTU per Cubic Foot (BTU/ft³)"]
    var selectedUnit: String = "Joules per Cubic Meter (J/m³)"

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
            let result = convertHeatDensity(value: inputValue, fromUnit: selectedUnit)
            resultLabel.text = "\(result) \(selectedUnit)"
        } else {
            resultLabel.text = "Invalid Input"
        }
    }

    func convertHeatDensity(value: Double, fromUnit: String) -> Double {
        switch fromUnit {
        case "Joules per Cubic Meter (J/m³)":
            return value
        case "Calories per Cubic Centimeter (cal/cm³)":
            return value * 41868.24
        case "BTU per Cubic Foot (BTU/ft³)":
            return value * 0.00003706
        default:
            return 0.0
        }
    }
}


