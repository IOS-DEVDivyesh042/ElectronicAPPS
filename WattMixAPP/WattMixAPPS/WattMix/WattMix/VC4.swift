//
//  VC4.swift
//  VoltaVortex
//
//  Created by Manish Bhanushali on 14/10/23.
//

import UIKit



class VC4 : UIViewController {

    @IBOutlet weak var powerTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var milliwattsLabel: UILabel!
    @IBOutlet weak var kilowattsLabel: UILabel!
    @IBOutlet weak var megawattsLabel: UILabel!
    @IBOutlet weak var gigawattsLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func convertButtonTapped(_ sender: UIButton) {
        if let inputText = powerTextField.text, let watts = Double(inputText) {
            let milliwatts = watts * 1000
            let kilowatts = watts / 1000
            let megawatts = watts / 1_000_000
            let gigawatts = watts / 1_000_000_000

            resultLabel.text = "Milliwatts: \(milliwatts) mW"
            milliwattsLabel.text = "Kilowatts: \(kilowatts) kW"
            kilowattsLabel.text = "Megawatts: \(megawatts) MW"
            megawattsLabel.text = "Gigawatts: \(gigawatts) GW"
            //gigawattsLabel.text = "" // Clear this label
        } else {
            resultLabel.text = "Invalid input"
            milliwattsLabel.text = "Invalid input"
            kilowattsLabel.text = "Invalid input"
            megawattsLabel.text = "Invalid input"
            //gigawattsLabel.text = "Invalid input"
        }
    }
}
