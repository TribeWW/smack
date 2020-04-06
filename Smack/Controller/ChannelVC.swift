//
//  ChannelVC.swift
//  Smack
//
//  Created by Matthias Plancke on 03/04/2020.
//  Copyright © 2020 Matthias Plancke. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController()?.rearViewRevealWidth = self.view.frame.size.width - 60
      
    }
    

}
