//
//
//
//  Created by Manish Bhanushali on 24/10/23.
//

import UIKit

class Pressure : UIViewController {
    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var unitPicker: UIPickerView!
    @IBOutlet weak var convertButton: UIButton!
    
    let powerUnits = ["W", "kW", "HP", "MW", "BTU/hr"]
    
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
           let inputPower = Double(inputText) {
            let selectedUnit = powerUnits[unitPicker.selectedRow(inComponent: 0)]
            let convertedPower = convertPower(inputPower, from: selectedUnit)
            outputLabel.text = String(format: "%.2f", convertedPower) + " \(selectedUnit)"
        } else {
            outputLabel.text = "Invalid input"
        }
    }
    
    func convertPower(_ power: Double, from unit: String) -> Double {
        let unitToWattConversionFactors: [String: Double] = [
            "W": 1.0,
            "kW": 1000.0, // 1 kW = 1000 W
            "HP": 745.7, // 1 HP = 745.7 W
            "MW": 1_000_000.0, // 1 MW = 1,000,000 W
            "BTU/hr": 0.29307107017 // 1 BTU/hr = 0.29307107017 W
        ]
        
        if let conversionFactor = unitToWattConversionFactors[unit] {
            return power / conversionFactor
        }
        return 0.0
    }
}

extension Pressure : UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return powerUnits.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return powerUnits[row]
    }
}
