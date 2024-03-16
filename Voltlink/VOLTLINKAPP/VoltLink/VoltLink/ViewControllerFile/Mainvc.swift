//
//  Mainvc.swift
//  VoltLink
//
//  Created by Manish Bhanushali on 18/10/23.
//

import UIKit

class Mainvc: UIViewController {

    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var view2: UIView!
    
    @IBOutlet weak var view3: UIView!
    
    @IBOutlet weak var view4: UIView!
    
    @IBOutlet weak var view5: UIView!
    
    //@IBOutlet weak var botomview: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        view1.layer.cornerRadius = 20
        view1.layer.borderWidth = 5
        view1.layer.borderColor = UIColor.orange.cgColor
        
        view2.layer.cornerRadius = 20
        view2.layer.borderWidth = 5
        view2.layer.borderColor = UIColor.orange.cgColor
        
        view3.layer.cornerRadius = 20
        view3.layer.borderWidth = 5
        view3.layer.borderColor = UIColor.orange.cgColor
        
        view4.layer.cornerRadius = 20
        view4.layer.borderWidth = 5
        view4.layer.borderColor = UIColor.orange.cgColor
        
        view5.layer.cornerRadius = 20
        view5.layer.borderWidth = 5
        view5.layer.borderColor = UIColor.orange.cgColor
        
    

        // Do any additional setup after loading the view.
    }
    
    @IBAction func buckbtn(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "Buckvc")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    @IBAction func rotaryphase(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "Cyclovc")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    @IBAction func flybackbtn(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "Flybackvc")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    @IBAction func freqbtn(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "Frequencyvc")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    
    
    
    
    
    
    
    
    
    

}
