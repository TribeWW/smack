//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Matthias Plancke on 21/04/2020.
//  Copyright © 2020 Matthias Plancke. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    

}
