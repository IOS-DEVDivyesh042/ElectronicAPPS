
import UIKit

class Abtsvc: UIViewController {

    @IBOutlet weak var abvs: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        abvs.layer.cornerRadius = 20
        abvs.layer.borderWidth = 4
        abvs.layer.borderColor = UIColor.black.cgColor
    }
    

//    @IBAction func btnback(_ sender: Any) {
//        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController")as! ViewController
//        navigationController?.pushViewController(vc, animated: true)
//    }
//
}
