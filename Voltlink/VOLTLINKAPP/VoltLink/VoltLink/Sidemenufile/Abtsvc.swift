
import UIKit

class Abtsvc: UIViewController {

    @IBOutlet weak var abvc: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        abvc.layer.cornerRadius = 20
    }
    

//    @IBAction func btnback(_ sender: Any) {
//        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController")as! ViewController
//        navigationController?.pushViewController(vc, animated: true)
//    }
//
}
