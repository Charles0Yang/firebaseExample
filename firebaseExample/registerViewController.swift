//
//  registerViewController.swift
//  firebaseExample
//
//  Created by Yang, Charles (BJH) on 22/01/2019.
//  Copyright © 2019 Yang, Charles (BJH). All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseFirestore

class registerViewController: UIViewController {
    
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var password: UITextField!
    
    @IBAction func regUser(_ sender: Any) {
        Auth.auth().createUser(withEmail: email.text!, password: password.text!, completion: {(user, error) in
            if error != nil{
                print(error!)
            }else{
                print("Registration successful")
            }
        })
        self.navigationController?.popViewController(animated: true)
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
