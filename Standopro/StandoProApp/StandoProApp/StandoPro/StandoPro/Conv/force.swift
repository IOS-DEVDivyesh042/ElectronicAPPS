
//
//  Created by Manish Bhanushali on 24/10/23.
//

import UIKit

class force : UIViewController {
    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var unitPicker: UIPickerView!
    @IBOutlet weak var convertButton: UIButton!
    
    let forceUnits = ["N", "lb", "kgf", "dyn", "kN"]
    
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
           let inputForce = Double(inputText) {
            let selectedUnit = forceUnits[unitPicker.selectedRow(inComponent: 0)]
            let convertedForce = convertForce(inputForce, from: selectedUnit)
            outputLabel.text = String(format: "%.2f", convertedForce) + " \(selectedUnit)"
        } else {
            outputLabel.text = "Invalid input"
        }
    }
    
    func convertForce(_ force: Double, from unit: String) -> Double {
        let unitToNewtonConversionFactors: [String: Double] = [
            "N": 1.0,
            "lb": 4.44822, // 1 lb = 4.44822 N
            "kgf": 9.80665, // 1 kgf = 9.80665 N
            "dyn": 0.00001, // 1 dyn = 0.00001 N
            "kN": 1000.0 // 1 kN = 1000 N
        ]
        
        if let conversionFactor = unitToNewtonConversionFactors[unit] {
            return force / conversionFactor
        }
        return 0.0
    }
}

extension force: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return forceUnits.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return forceUnits[row]
    }
}
