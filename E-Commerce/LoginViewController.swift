//
//  LoginViewController.swift
//  E-Commerce
//
//  Created by KhaleD HuSsien on 16/09/2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var emailView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        emailView.addLayer()
        passwordView.addLayer()
        loginButton.addLayer()
        
    }
    
    @IBAction func loginBtnTapped(_ sender: UIButton) {
        guard let email = emailTF.text , !email.isEmpty , let password = passwordTF.text , !password.isEmpty else{return}
        print("logged in")
    }
    @IBAction func newaccountBtnTapped(_ sender: UIButton) {
        let controller = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SignUpViewController")as! SignUpViewController
        navigationController?.pushViewController(controller, animated: true)
        
    }
    
}

