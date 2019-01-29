//
//  etonViewController.swift
//  firebaseExample
//
//  Created by Yang, Charles (BJH) on 29/01/2019.
//  Copyright © 2019 Yang, Charles (BJH). All rights reserved.
//

import UIKit
import FirebaseFirestore

class etonViewController: UIViewController {
    
    @IBOutlet weak var theText: UITextField!
    let db = Firestore.firestore()
    
    @IBAction func sendTweet(_ sender: Any) {
        db.collection("tweets").document("eton").updateData(["messages": FieldValue.arrayUnion([theText.text!])])
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
