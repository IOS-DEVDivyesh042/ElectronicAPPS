//
//  Speedvc.swift
//  demoo
//
//  Created by Manish Bhanushali on 22/10/23.
//

import UIKit

class Speedvc : UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var unitPicker: UIPickerView!
    @IBOutlet weak var convert : UIButton!
    var units = ["Meters per Second", "Kilometers per Hour", "Miles per Hour"]
    var selectedUnit: String = "Meters per Second"

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
            let result = convertSpeed(value: inputValue, fromUnit: selectedUnit)
            resultLabel.text = "\(result) \(selectedUnit)"
        } else {
            resultLabel.text = "Invalid Input"
        }
    }

    func convertSpeed(value: Double, fromUnit: String) -> Double {
        let metersPerSecond = value
        switch fromUnit {
        case "Meters per Second":
            return metersPerSecond
        case "Kilometers per Hour":
            return metersPerSecond * 3.6
        case "Miles per Hour":
            return metersPerSecond * 2.23694
        default:
            return 0.0
        }
    }
}
