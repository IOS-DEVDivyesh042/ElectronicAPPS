import UIKit

class Cyclovc: UIViewController {
    @IBOutlet weak var voltageTextField: UITextField!
    @IBOutlet weak var currentTextField: UITextField!
    @IBOutlet weak var frequencyTextField: UITextField!
   // @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        resultLabel.layer.cornerRadius = 10
        resultLabel.layer.borderColor = UIColor.orange.cgColor
        resultLabel.layer.borderWidth = 3
    }

    @IBAction func calculateButtonPressed(_ sender: UIButton) {
        if let voltageText = voltageTextField.text,
           let currentText = currentTextField.text,
           let frequencyText = frequencyTextField.text,
           let voltage = Double(voltageText),
           let current = Double(currentText),
           let frequency = Double(frequencyText) {

            // Simple estimation of three-phase values
            let estimatedVoltage = voltage * 1.732 // Assuming balanced three-phase
            let estimatedCurrent = current

            resultLabel.text = "Three-Phase Voltage: \(estimatedVoltage) V\nThree-Phase Current: \(estimatedCurrent) A"
        } else {
            resultLabel.text = "Invalid input"
        }
    }
}
