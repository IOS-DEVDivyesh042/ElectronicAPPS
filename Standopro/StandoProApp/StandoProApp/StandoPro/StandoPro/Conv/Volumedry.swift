//

//
//  Created by Manish Bhanushali on 24/10/23.
//

import UIKit

class Volumedry : UIViewController {
    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var unitPicker: UIPickerView!
    @IBOutlet weak var convertButton: UIButton!
    
    let volumeUnits = ["m³", "L", "in³", "ft³", "US dry gal"]
    
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
           let inputVolume = Double(inputText) {
            let selectedUnit = volumeUnits[unitPicker.selectedRow(inComponent: 0)]
            let convertedVolume = convertVolume(inputVolume, from: selectedUnit)
            outputLabel.text = String(format: "%.2f", convertedVolume) + " \(selectedUnit)"
        } else {
            outputLabel.text = "Invalid input"
        }
    }
    
    func convertVolume(_ volume: Double, from unit: String) -> Double {
        let unitToCubicMeterConversionFactors: [String: Double] = [
            "m³": 1.0,
            "L": 0.001, // 1 L = 0.001 m³
            "in³": 0.000016387064, // 1 in³ = 0.000016387064 m³
            "ft³": 0.0283168466, // 1 ft³ = 0.0283168466 m³
            "US dry gal": 0.00838641436 // 1 US dry gal = 0.00838641436 m³
        ]
        
        if let conversionFactor = unitToCubicMeterConversionFactors[unit] {
            return volume / conversionFactor
        }
        return 0.0
    }
}

extension Volumedry : UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return volumeUnits.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return volumeUnits[row]
    }
}
