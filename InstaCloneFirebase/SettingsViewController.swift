//
//  SettingsViewController.swift
//  InstaCloneFirebase
//
//  Created by Hilal İnan on 1.03.2025.
//

import UIKit
import FirebaseAuth
import FirebaseCore
import FirebaseFirestore

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func logoutClicked(_ sender: Any) {
        
        do {
            try Auth.auth().signOut()
            self.performSegue(withIdentifier: "toViewController", sender: nil)
        } catch {
            print("Error!")
        }
    }
    

}
