//
//  Howto.swift
//  StandoPro
//
//  Created by Manish Bhanushali on 24/10/23.
//

import UIKit

class Howto: UIViewController {

    @IBOutlet weak var howtotext: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        howtotext.layer.cornerRadius = 40
        howtotext.layer.borderColor = UIColor.black.cgColor
        howtotext.layer.borderWidth = 4

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
