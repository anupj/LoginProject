//
//  MainViewController.swift
//  LoginProject
//
//  Created by Anup on 04/02/2015.
//  Copyright (c) 2015 Anup. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var passwordLabel: UILabel!
    
    let kUserNameKey = "userNameKey"
    let kPasswordKey = "passwordKey"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        usernameLabel.text = NSUserDefaults.standardUserDefaults().objectForKey(kUserNameKey) as? String
        passwordLabel.text = NSUserDefaults.standardUserDefaults().objectForKey(kPasswordKey) as? String
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
}
