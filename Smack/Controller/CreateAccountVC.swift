//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Matthias Plancke on 21/04/2020.
//  Copyright © 2020 Matthias Plancke. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    //Outlets
    
    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var emailTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    @IBOutlet weak var userImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func createAccountPressed(_ sender: Any) {
        guard let email = emailTxt.text , emailTxt.text != "" else {return}
        guard let pass = passTxt.text , passTxt.text != "" else {return}
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            if success {
                AuthService.instance.loginUser(email: email, password: pass) { (success) in
                    if success {
                        print("Logged In user! Bitches...!!", AuthService.instance.authToken)
                    }
                }
            }
        }
    }
    @IBAction func pickAvatarPressed(_ sender: Any) {
       
    }
    @IBAction func pickBGColorPressed(_ sender: Any) {
    }
    
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    

}
