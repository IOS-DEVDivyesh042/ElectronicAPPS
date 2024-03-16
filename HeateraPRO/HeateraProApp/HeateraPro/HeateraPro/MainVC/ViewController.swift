//
//  ViewController.swift
//  demoo
//
//  Created by Manish Bhanushali on 22/10/23.
//

import UIKit

//var data = [Moviedata(sectiontype: "Unit COnverter", movies: ["Area","Lenght","Speed","Heat","HEAT-FLUX","HEAT DENSITY"])]


class ViewController: UIViewController {

    @IBOutlet weak var btn2: UIButton!
    
    @IBOutlet weak var btn1: UIButton!
    
    @IBOutlet weak var btn3: UIButton!
    
    
    @IBOutlet weak var btn4: UIButton!
    
    
    @IBOutlet weak var btn5: UIButton!
    
    
    
    @IBOutlet weak var btn6: UIButton!
    
    
    
    @IBOutlet weak var tblview: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btn1.layer.cornerRadius = 20
        btn1.layer.borderWidth = 2
        btn1.layer.borderColor = UIColor.black.cgColor
        
        btn2.layer.cornerRadius = 20
        btn2.layer.borderWidth = 2
        btn2.layer.borderColor = UIColor.black.cgColor
        btn3.layer.cornerRadius = 20
        btn3.layer.borderWidth = 2
        btn3.layer.borderColor = UIColor.black.cgColor
        btn4.layer.cornerRadius = 20
        btn4.layer.borderWidth = 2
        btn4.layer.borderColor = UIColor.black.cgColor
        btn6.layer.cornerRadius = 20
        btn6.layer.borderWidth = 2
        btn6.layer.borderColor = UIColor.black.cgColor
        btn5.layer.cornerRadius = 20
        btn5.layer.borderWidth = 2
        btn5.layer.borderColor = UIColor.black.cgColor
        
        
        
    }
    
    
    @IBAction func areabtn(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "Areavc") as!
        Areavc
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func lengthbtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "Lengthvc") as!
        Lengthvc
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func speedbtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "Speedvc") as!
        Speedvc
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func heatbtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "Heatvc") as!
        Heatvc
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func heatfbtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "Heatflux") as!
        Heatflux
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func heatdbtn(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "Heatdensity") as!
        Heatdensity
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    
    
    
    
    
    
    


}

