
//
//  Created by Manish Bhanushali on 24/10/23.
//

import UIKit

class Density : UIViewController {
    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var unitPicker: UIPickerView!
    @IBOutlet weak var convertButton: UIButton!
    
    let densityUnits = ["kg/m³", "g/cm³", "lb/in³", "oz/in³", "t/m³"]
    
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
           let inputDensity = Double(inputText) {
            let selectedUnit = densityUnits[unitPicker.selectedRow(inComponent: 0)]
            let convertedDensity = convertDensity(inputDensity, from: selectedUnit)
            outputLabel.text = String(format: "%.2f", convertedDensity) + " \(selectedUnit)"
        } else {
            outputLabel.text = "Invalid input"
        }
    }
    
    func convertDensity(_ density: Double, from unit: String) -> Double {
        let unitToKgPerCubicMeterConversionFactors: [String: Double] = [
            "kg/m³": 1.0,
            "g/cm³": 1000.0, // 1 g/cm³ = 1000 kg/m³
            "lb/in³": 27679.9, // 1 lb/in³ = 27679.9 kg/m³
            "oz/in³": 1730.73, // 1 oz/in³ = 1730.73 kg/m³
            "t/m³": 1000.0 // 1 t/m³ = 1000 kg/m³
        ]
        
        if let conversionFactor = unitToKgPerCubicMeterConversionFactors[unit] {
            return density / conversionFactor
        }
        return 0.0
    }
}

extension Density: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return densityUnits.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return densityUnits[row]
    }
}
