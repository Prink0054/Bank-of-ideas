


import UIKit

class Register_ViewController: BaseViewController {

    //MARK:- IBOUTLETS
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var NameTextfield: UITextField!
    @IBOutlet weak var EmailTextfield: UITextField!
    @IBOutlet weak var PasswordTextfield: UITextField!
    @IBOutlet weak var SignIn: UIButton!
    
       //MARK:- VIEWCYCLE
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpUi()
           }
    override func viewWillAppear(_ animated: Bool) {
       
    }
    
    //MARK:- PRIVATE FUNCTINOS
    func setUpUi(){
    
    self.navigationController?.navigationBar.isHidden = false
    setTitle(title: "REGISTER")
    NameTextfield.setRadius()
    EmailTextfield.setRadius()
    PasswordTextfield.setRadius()
    SignIn.setRadius()
    
    }
    
    
    //MARK:- IBACTIONS
    @IBAction func SignIn(_ sender: Any) {
        
        navigateToViewController(storyboardName: "Main", viewID: "SaveDataViewController")
    }
    
    }
