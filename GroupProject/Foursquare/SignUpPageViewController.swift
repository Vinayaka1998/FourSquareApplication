//
//  SignUpPageViewController.swift
//  Foursquare
//
//  Created by Vinayaka V on 29/06/21.
//

import UIKit

class SignUpPageViewController: UIViewController {
    
    
    @IBOutlet weak var loginButtonOutlet: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginButtonOutlet.layer.borderWidth = 0.5
        loginButtonOutlet.layer.cornerRadius = 5.0
        loginButtonOutlet.layer.borderColor = CGColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        navigationController?.navigationBar.isHidden = true
    }
    
    @IBAction func loginButtonClicked(_ sender: Any) {
        
        if  let firstVC = self.storyboard?.instantiateViewController(identifier: "HomeScreenController") as? HomeScreenController {
            self.navigationController?.pushViewController(firstVC, animated: true)
        
//        navigationController?.pushViewController(HomeScreenController, animated: true)
        }
    }
}
