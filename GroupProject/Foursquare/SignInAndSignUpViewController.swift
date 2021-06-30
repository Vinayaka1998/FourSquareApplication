//
//  SignInAndSignUpViewController.swift
//  Foursquare
//
//  Created by Vinayaka V on 28/06/21.
//

import UIKit


class SignInAndSignUpViewController: BackgroundImageCustomClass {
    @IBOutlet weak var signInPageView: UIView!
    @IBOutlet weak var signUpPageContainerView: UIView!
    @IBOutlet weak var orLabelOutlet: UILabel!
    @IBOutlet weak var loginButtonOutlet: UIButton!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var contentView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.isHidden = true
        contentView.backgroundColor = UIColor.clear
        loginButtonOutlet.layer.borderWidth = 0.5
        loginButtonOutlet.layer.borderColor = CGColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        loginButtonOutlet.layer.cornerRadius = 5.0
        orLabelOutlet.layer.cornerRadius = orLabelOutlet.frame.width/2
        orLabelOutlet.layer.masksToBounds = true
        
        signUpPageContainerView.isHidden = true
        
    }
    
    
    override func viewDidLayoutSubviews() {
        viewDidLayoutSubviews(contentView: contentView, scrollView: scrollView)
    }
    @IBAction func createAccountButtonClicked(_ sender: Any) {
        
        signUpPageContainerView.isHidden = false
        signInPageView.isHidden = true 
    }
}
