//
//  Heatflux.swift
//  demoo
//
//  Created by Manish Bhanushali on 22/10/23.
//

import UIKit

class Heatflux: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var unitPicker: UIPickerView!
    @IBOutlet weak var convert : UIButton!
    var units = ["Watts per Square Meter (W/m²)", "Calories per Square Centimeter per Second (cal/cm²/s)", "BTU per Square Foot per Second (BTU/ft²/s)"]
    var selectedUnit: String = "Watts per Square Meter (W/m²)"

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
            let result = convertHeatFluxDensity(value: inputValue, fromUnit: selectedUnit)
            resultLabel.text = "\(result) \(selectedUnit)"
        } else {
            resultLabel.text = "Invalid Input"
        }
    }

    func convertHeatFluxDensity(value: Double, fromUnit: String) -> Double {
        switch fromUnit {
        case "Watts per Square Meter (W/m²)":
            return value
        case "Calories per Square Centimeter per Second (cal/cm²/s)":
            return value * 41868.24
        case "BTU per Square Foot per Second (BTU/ft²/s)":
            return value * 0.00003706
        default:
            return 0.0
        }
    }
}
