

import UIKit

class sidemenuTblCell: UITableViewCell {

    @IBOutlet weak var imgSidemenu: UIImageView!
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var myview : UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
 
        myview.layer.cornerRadius = 40
        myview.layer.borderWidth = 5
        myview.layer.borderColor = UIColor.orange.cgColor
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
       
    }

}
