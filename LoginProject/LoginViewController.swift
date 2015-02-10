//
//  LoginViewController.swift
//  LoginProject
//
//  Created by Anup on 04/02/2015.
//  Copyright (c) 2015 Anup. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, CreateAccountViewControllerDelegate {
    
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let kUserNameKey = "userNameKey"
    let kPasswordKey = "passwordKey"
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "loginToCreateAccountSegue" {
            var createAccountVC = segue.destinationViewController as CreateAccountViewController
            createAccountVC.delegate = self
        }
    }
    
    @IBAction func loginButtonPressed(sender: UIButton) {
        let usernameSavedFromNSUserDefaults = NSUserDefaults.standardUserDefaults().objectForKey(kUserNameKey) as String
        println(usernameSavedFromNSUserDefaults)
        let passwordSavedFromNSUserDefaults = NSUserDefaults.standardUserDefaults().objectForKey(kPasswordKey) as String
        println(passwordSavedFromNSUserDefaults)
        if usernameTextField.text == usernameSavedFromNSUserDefaults && passwordTextField.text == passwordSavedFromNSUserDefaults {
            self.performSegueWithIdentifier("loginToMainSegue", sender: self)
        }
    }
    
    
    @IBAction func createAccountButtonPressed(sender: UIButton) {
        self.performSegueWithIdentifier("loginToCreateAccountSegue", sender: self)
    }
    
    //createAccountViewControllerDelegate
    func accountCreated() {
        self.performSegueWithIdentifier("loginToMainSegue", sender: nil)
    }


}
