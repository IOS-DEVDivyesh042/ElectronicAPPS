//
//  Frequencyvc.swift
//  VoltLink
//
//  Created by Manish Bhanushali on 18/10/23.
//

import UIKit

class Frequencyvc : UIViewController {
    @IBOutlet weak var linearFrequencyTextField: UITextField!
    @IBOutlet weak var angularFrequencyTextField: UITextField!
    @IBOutlet weak var resultLinearFrequencyLabel: UILabel!
    @IBOutlet weak var resultAngularFrequencyLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func convertButtonPressed(_ sender: UIButton) {
            if let linearFrequencyText = linearFrequencyTextField.text, let linearFrequency = Double(linearFrequencyText),
               let angularFrequencyText = angularFrequencyTextField.text, let angularFrequency = Double(angularFrequencyText) {
                // Update both labels with the entered values
                resultLinearFrequencyLabel.text = "\(linearFrequency) Hz"
                resultAngularFrequencyLabel.text = "\(angularFrequency) rad/s"
            } else {
                // Handle invalid input
                resultLinearFrequencyLabel.text = "Invalid input"
                resultAngularFrequencyLabel.text = "Invalid input"
            }
        }

    }

