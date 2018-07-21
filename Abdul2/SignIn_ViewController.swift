
import UIKit

class SignIn_ViewController: BaseViewController {
    
    
    
    //MARK:- IBOUTLETS

    @IBOutlet weak var signinButton: UIButton!
    @IBOutlet weak var emailTextfield: UITextField!
    
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    //MARK:- VIEWCYCLE
    
    override func viewDidLoad() {
        super.viewDidLoad()
          self.setUpUi()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
           self.navigationController?.navigationBar.isHidden = true
    }

    
    
    //MARK:- PRIVATE FUNCTIONS
   func setUpUi(){
    
    
    emailTextfield.setRadius()
    passwordTextfield.setRadius()
    signinButton.setRadius()
    setTitle(title: "kodjaijk")
  
 
   
    
    
    }
    //MARK:- IBACTIONS
    
    @IBAction func forgotButton(_ sender: Any) {
        navigateToViewController(storyboardName: "Main", viewID: "ForgotViewController")
    }
    
    
    @IBAction func signinButton(_ sender: Any) {
        navigateToViewController(storyboardName: "Main", viewID: "DataListingViewController")

    }
    
    @IBAction func registerButton(_ sender: Any) {
        
navigateToViewController(storyboardName: "Main", viewID: "Register_ViewController")
        
    }



}

