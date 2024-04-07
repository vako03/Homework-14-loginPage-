//
//  ViewController.swift
//  Homework 14 (loginPage)
//
//  Created by vako on 07.04.24.
//

import UIKit

class LogInVC: UIViewController {
    
    let coverImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "coverImage")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    let titleLabel: UILabel = {
        let title = UILabel()
        title.text = "მოგესალმებით!"
        title.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        title.textColor = .black
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    let contentLabel: UILabel = {
        let content = UILabel()
        content.text = "ამ აპლიკაციის გამოყენების საუკეთესო გზა თქვენს ანგარიშზე შესვლაა, თუ არ გაქვთ ანგარიში გააკეთეთ, თუ არ გსურთ გაკეთება დასტოვეთ აქაურობა და წაშალეთ აპლიკაცია."
        content.numberOfLines = 0
        content.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        content.textColor = .gray
        content.translatesAutoresizingMaskIntoConstraints = false
        return content
    }()
    
    let authLabel: UILabel = {
        let authLabel = UILabel()
        authLabel.text = "ავტორიზაცია"
        authLabel.textColor = .black
        authLabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        authLabel.translatesAutoresizingMaskIntoConstraints = false
        return authLabel
    }()
    
    let separatorLine: UIView = {
        let separator = UIView()
        separator.backgroundColor = .blue
        separator.translatesAutoresizingMaskIntoConstraints = false
        return separator
    }()
    
    let nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.text = "სრული სახელი"
        nameLabel.font = UIFont.systemFont(ofSize: 12)
        nameLabel.textColor = .black
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        return nameLabel
    }()
    
    let textfield: UITextField = {
        let nameTextField = UITextField()
        nameTextField.placeholder = "ჩაწერე სრული სახელი"
        nameTextField.font = UIFont.systemFont(ofSize: 12)
        nameTextField.textColor = .gray
        nameTextField.borderStyle = .roundedRect
        nameTextField.translatesAutoresizingMaskIntoConstraints = false
        return nameTextField
    }()
    
    let emailLabel: UILabel = {
        let emailLabel = UILabel()
        emailLabel.text = "ელ. ფოსტა"
        emailLabel.font = UIFont.systemFont(ofSize: 12)
        emailLabel.textColor = .black
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        return emailLabel
    }()
    
    let emailTextfield: UITextField = {
        let emailTextfield = UITextField()
        emailTextfield.placeholder = "kusuna@mail.ru"
        emailTextfield.font = UIFont.systemFont(ofSize: 12)
        emailTextfield.textColor = .gray
        emailTextfield.borderStyle = .roundedRect
        emailTextfield.translatesAutoresizingMaskIntoConstraints = false
        return emailTextfield
    }()
    
    let passwordLabel: UILabel = {
        let passwordLabel = UILabel()
        passwordLabel.text = "პაროლი"
        passwordLabel.font = UIFont.systemFont(ofSize: 12)
        passwordLabel.textColor = .black
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        return passwordLabel
    }()
    
    let passwordTextfield: UITextField = {
        let passwordTextfield = UITextField()
        passwordTextfield.placeholder = "busuna123"
        passwordTextfield.font = UIFont.systemFont(ofSize: 12)
        passwordTextfield.textColor = .gray
        passwordTextfield.isSecureTextEntry = true // Enable secure text entry
        passwordTextfield.borderStyle = .roundedRect
        passwordTextfield.translatesAutoresizingMaskIntoConstraints = false
        return passwordTextfield
    }()
    
    let mainVerticalStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 8
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let nameVerticalStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 4
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let emailVerticalStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 4
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let passVerticalStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 4
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let logInView: UIView = {
        let view = UIView()
        view.backgroundColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .blue
        button.setTitle("შესვლა", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 12
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
        
        
    }()
    let horizontalStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    let grayLine1: UIView = {
        let line = UIView()
        line.backgroundColor = .gray
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    
    let orLabel: UILabel = {
        let label = UILabel()
        label.text = "ან"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let grayLine2: UIView = {
        let line = UIView()
        line.backgroundColor = .gray
        line.translatesAutoresizingMaskIntoConstraints = false
        return line
    }()
    
    let useGoogleButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "g.circle.fill"), for: .normal)
        button.tintColor = .black
        button.backgroundColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        button.layer.cornerRadius = 12
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.setTitle("   გამოიყენეთ გუგული", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.setTitleColor(.black, for: .normal)
        
        NSLayoutConstraint.activate([
            button.heightAnchor.constraint(equalToConstant: 48),
            button.widthAnchor.constraint(equalToConstant: 180)
        ])
        return button
    }()
    
    let useFacebookButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "f.circle.fill"), for: .normal)
        button.tintColor = .black
        button.backgroundColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        button.layer.cornerRadius = 12
        button.translatesAutoresizingMaskIntoConstraints = false
        
        button.setTitle("   გამოიყენეთ ფეისბურგი", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.setTitleColor(.black, for: .normal)
        
        NSLayoutConstraint.activate([
            button.heightAnchor.constraint(equalToConstant: 48),
            button.widthAnchor.constraint(equalToConstant: 180)
        ])
        return button
        
    }()
    
    let verticalStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.spacing = 8
        stack.translatesAutoresizingMaskIntoConstraints = false
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addAttributes()
        setupPasswordValidation()
        setupEmailValidation()

    }
    
    func addAttributes(){
        self.view.addSubview(coverImage)
        self.view.addSubview(titleLabel)
        self.view.addSubview(contentLabel)
        self.view.addSubview(authLabel)
        self.view.addSubview(separatorLine)
        self.view.addSubview(button)
        
        NSLayoutConstraint.activate([
            coverImage.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            coverImage.heightAnchor.constraint(equalToConstant: 50),
            coverImage.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: coverImage.bottomAnchor, constant: 30),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            contentLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 4),
            contentLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            contentLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            authLabel.topAnchor.constraint(equalTo: contentLabel.bottomAnchor, constant: 20),
            authLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            separatorLine.topAnchor.constraint(equalTo: authLabel.bottomAnchor, constant: 10),
            
            separatorLine.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            separatorLine.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            separatorLine.heightAnchor.constraint(equalToConstant: 2)
            
        ])
        
        self.view.addSubview(nameVerticalStack)
        nameVerticalStack.addArrangedSubview(nameLabel)
        nameVerticalStack.addArrangedSubview(textfield)
        
        self.view.addSubview(emailVerticalStack)
        emailVerticalStack.addArrangedSubview(emailLabel)
        emailVerticalStack.addArrangedSubview(emailTextfield)
        
        self.view.addSubview(passVerticalStack)
        passVerticalStack.addArrangedSubview(passwordLabel)
        passVerticalStack.addArrangedSubview(passwordTextfield)
        
        self.view.addSubview(mainVerticalStack)
        mainVerticalStack.addArrangedSubview(nameVerticalStack)
        mainVerticalStack.addArrangedSubview(emailVerticalStack)
        mainVerticalStack.addArrangedSubview(passVerticalStack)
        
        NSLayoutConstraint.activate([
            mainVerticalStack.topAnchor.constraint(equalTo: separatorLine.bottomAnchor, constant: 24),
            mainVerticalStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            mainVerticalStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            button.topAnchor.constraint(equalTo: mainVerticalStack.bottomAnchor, constant: 20),
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            button.heightAnchor.constraint(equalToConstant: 46)
            
        ])
        self.view.addSubview(horizontalStack)
        horizontalStack.addArrangedSubview(grayLine1)
        horizontalStack.addArrangedSubview(orLabel)
        horizontalStack.addArrangedSubview(grayLine2)
        
        horizontalStack.axis = .horizontal
        horizontalStack.distribution = .equalSpacing
        horizontalStack.alignment = .center
        
        NSLayoutConstraint.activate([
            horizontalStack.topAnchor.constraint(equalTo: button.bottomAnchor, constant: 24),
            horizontalStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            horizontalStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            grayLine1.heightAnchor.constraint(equalToConstant: 2),
            
            orLabel.heightAnchor.constraint(equalToConstant: 22),
            orLabel.leadingAnchor.constraint(equalTo: grayLine1.trailingAnchor, constant: 15),
            orLabel.trailingAnchor.constraint(equalTo: grayLine2.leadingAnchor, constant: -15),
            
            grayLine2.widthAnchor.constraint(equalTo: grayLine1.widthAnchor),
            grayLine2.heightAnchor.constraint(equalTo: grayLine1.heightAnchor),
        ])
        
        self.view.addSubview(verticalStack)
        verticalStack.addArrangedSubview(useGoogleButton)
        verticalStack.addArrangedSubview(useFacebookButton)
        verticalStack.spacing = 16
        
        NSLayoutConstraint.activate([
            verticalStack.topAnchor.constraint(equalTo: horizontalStack.bottomAnchor, constant: 24),
            verticalStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            verticalStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
        ])
        
    }
    
    func setupPasswordValidation() {
        passwordTextfield.addTarget(self, action: #selector(passwordDidChange(_:)), for: .editingChanged)
    }
    
    @objc func passwordDidChange(_ textField: UITextField) {
        if let text = textField.text, (text.count < 6 || text.count > 15) {
            textField.layer.borderColor = UIColor.red.cgColor
            textField.layer.borderWidth = 1.0
        } else {
            textField.layer.borderColor = UIColor.gray.cgColor
            textField.layer.borderWidth = 0.0
        }
    }
    
    func setupEmailValidation() {
        emailTextfield.addTarget(self, action: #selector(emailDidChange(_:)), for: .editingChanged)
    }
    
    @objc func emailDidChange(_ textField: UITextField) {
        if let text = textField.text, !text.contains("@") || !text.contains(".") {
            textField.layer.borderColor = UIColor.red.cgColor
            textField.layer.borderWidth = 1.0
        } else {
            textField.layer.borderColor = UIColor.gray.cgColor
            textField.layer.borderWidth = 0.0
        }
    }
    
}
