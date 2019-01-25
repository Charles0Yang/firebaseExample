//
//  ViewController.swift
//  firebaseExample
//
//  Created by Yang, Charles (BJH) on 18/01/2019.
//  Copyright © 2019 Yang, Charles (BJH). All rights reserved.
//

import UIKit
import FirebaseAuth

class ViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBAction func login(_ sender: Any) {
        Auth.auth().signIn(withEmail: (email.text!), password: (password.text!)) { (user, error) in
            if error != nil{
                print(error!)
            }else{
                print("Login successful")
                self.performSegue(withIdentifier: "showMain", sender: self)
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

