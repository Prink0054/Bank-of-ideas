



import UIKit

class ChangePasswordViewController: BaseViewController {
    
    
    
    //MARK:- IBOUTLETS

    @IBOutlet weak var RegisterNowButton: UIButton!
    @IBOutlet weak var ConfirmPasswordtextfield: UITextField!
    @IBOutlet weak var NewPasswordtextfield: UITextField!
    @IBOutlet weak var OldpasswordTextfield: UITextField!
    
     //MARK:- VIEWCYCLE
    
    override func viewDidLoad() {
        super.viewDidLoad()
setUpUi()
        
    }

    //MARK:- PRIVATE FUNCTINOS

    
    func setUpUi()
    {
    self.navigationController?.navigationBar.isHidden = false
    setTitle(title: "CHANGE PASSWORD")
    RegisterNowButton.setRadius()
    ConfirmPasswordtextfield.setRadius()
    NewPasswordtextfield.setRadius()
    OldpasswordTextfield.setRadius()

    
    
    }
    
    //MARK:- IBACTIONS
    @IBAction func RegisterNowButton(_ sender: Any) {
    }
    
}
