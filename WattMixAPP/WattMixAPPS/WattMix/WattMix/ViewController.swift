//
//  ViewController.swift
//  WattMix
//
//  Created by Manish Bhanushali on 28/10/23.
//

import UIKit

class ViewController: UIViewController {
        
    
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var inview1: UIView!
    
    
    @IBOutlet weak var view2: UIView!
    
    @IBOutlet weak var inview2: UIView!
    
    
    @IBOutlet weak var view3: UIView!
    
    @IBOutlet weak var inview3: UIView!
    
    
    @IBOutlet weak var view4: UIView!
    
    @IBOutlet weak var inview4: UIView!
    
    
    @IBOutlet weak var btn1: UIButton!
    
    
    @IBOutlet weak var btn2: UIButton!
    
    
    @IBOutlet weak var btn3: UIButton!
    
    
    
    @IBOutlet weak var btn4: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        btn1.layer.cornerRadius = 10
        btn1.layer.borderColor = UIColor.orange.cgColor
        btn1.layer.borderWidth = 3
        
        btn2.layer.cornerRadius = 10
        btn2.layer.borderColor = UIColor.orange.cgColor
        btn2.layer.borderWidth = 3
        
        btn3.layer.cornerRadius = 10
        btn3.layer.borderColor = UIColor.orange.cgColor
        btn3.layer.borderWidth = 3
        
        btn4.layer.cornerRadius = 10
        btn4.layer.borderColor = UIColor.orange.cgColor
        btn4.layer.borderWidth = 3
        
        
        view1.layer.cornerRadius = 5
        view1.layer.borderWidth = 2
        view1.layer.borderColor = UIColor.black.cgColor
        
        inview1.layer.cornerRadius = 10
        inview1.layer.borderWidth = 2
        inview1.layer.borderColor = UIColor.black.cgColor
        
        
        view2.layer.cornerRadius = 5
        view2.layer.borderWidth = 2
        view2.layer.borderColor = UIColor.black.cgColor
        
        inview2.layer.cornerRadius = 10
        inview2.layer.borderWidth = 2
        inview2.layer.borderColor = UIColor.black.cgColor
        
        
        view3.layer.cornerRadius = 5
        view3.layer.borderWidth = 2
        view3.layer.borderColor = UIColor.black.cgColor
        
        inview3.layer.cornerRadius = 10
        inview3.layer.borderWidth = 2
        inview3.layer.borderColor = UIColor.black.cgColor
        
        
        view4.layer.cornerRadius = 5
        view4.layer.borderWidth = 2
        view4.layer.borderColor = UIColor.black.cgColor
        
        inview4.layer.cornerRadius = 10
        inview4.layer.borderWidth = 2
        inview4.layer.borderColor = UIColor.black.cgColor

        
        
        
        
        
   
    }

    
    @IBAction func btnn1(_ sender: Any) {
        
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "Buckvc")
        self.navigationController?.pushViewController(nextvc!, animated: true)
        
        
    }
    
    @IBAction func btnn2(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "Frequencyvc")
        self.navigationController?.pushViewController(nextvc!, animated: true)
        
    }
    
    @IBAction func btnn3(_ sender: Any) {
        
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "VC4")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    
    @IBAction func btnn4(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "VC2")
        self.navigationController?.pushViewController(nextvc!, animated: true)
        
    }
    
    

}

