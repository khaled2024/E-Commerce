//
//  SignUpViewController.swift
//  E-Commerce
//
//  Created by KhaleD HuSsien on 16/09/2022.
//

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var nameView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        emailView.addLayer()
        passwordView.addLayer()
        nameView.addLayer()
        signUpButton.addLayer()
    }
    @IBAction func haveanAccountButton(_ sender: UIButton) {
        
        navigationController?.popViewController(animated: true)
    }
    
    @IBAction func signUpButtonTapped(_ sender: UIButton) {
        guard let email = emailTF.text , !email.isEmpty , let password = passwordTF.text , !password.isEmpty, let name = nameTF.text , !name.isEmpty else{return}
        print("signUp")
    }
    
    
}
