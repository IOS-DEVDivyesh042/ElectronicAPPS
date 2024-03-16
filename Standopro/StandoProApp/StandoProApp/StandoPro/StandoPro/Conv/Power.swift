
//
//  Created by Manish Bhanushali on 24/10/23.
//

import UIKit

class Power : UIViewController {
    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var unitPicker: UIPickerView!
    @IBOutlet weak var convertButton: UIButton!

    let pressureUnits = ["psi", "Pa", "bar", "atm", "kPa"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        unitPicker.dataSource = self
        unitPicker.delegate = self
        unitPicker.layer.cornerRadius = 20
        unitPicker.layer.borderWidth = 4
        unitPicker.layer.borderColor = UIColor.black.cgColor
        convertButton.layer.cornerRadius = 20
    }

    @IBAction func convertButtonTapped(_ sender: UIButton) {
        if let inputText = inputTextField.text,
           let inputPressure = Double(inputText) {
            let selectedUnit = pressureUnits[unitPicker.selectedRow(inComponent: 0)]
            let convertedPressure = convertPressure(inputPressure, from: selectedUnit)
            outputLabel.text = String(format: "%.2f", convertedPressure) + " \(selectedUnit)"
        } else {
            outputLabel.text = "Invalid input"
        }
    }

    func convertPressure(_ pressure: Double, from unit: String) -> Double {
        let unitToPaConversionFactors: [String: Double] = [
            "psi": 6894.76,
            "Pa": 1.0,
            "bar": 100000.0,
            "atm": 101325.0,
            "kPa": 1000.0
        ]

        if let conversionFactor = unitToPaConversionFactors[unit] {
            return pressure / conversionFactor
        }
        return 0.0
    }
}

extension Power: UIPickerViewDataSource,UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }

    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pressureUnits.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return pressureUnits[row]
    }
}
