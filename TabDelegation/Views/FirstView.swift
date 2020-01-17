//
//  FirstView.swift
//  TabDelegation
//
//  Created by Alex Paul on 12/12/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class FirstView: UIView {
  
  public lazy var textField: UITextField = {
    let tv = UITextField()
    tv.placeholder = "enter your name"
    tv.backgroundColor = .orange
    return tv
  }()
  
  public lazy var button: UIButton = {
    let b = UIButton()
    b.setTitle("Submit", for: .normal)
    b.backgroundColor = .blue
    return b
  }()
  
  override init(frame: CGRect) {
    super.init(frame: UIScreen.main.bounds)
    commonInit()
  }
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
    commonInit()
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
  }
  
  private func commonInit() {
    backgroundColor = .yellow
    setupTextField()
    setupButton()
  }
  
  private func setupTextField() {
    addSubview(textField)
    textField.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([textField.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 100),
                                 textField.centerXAnchor.constraint(equalTo: centerXAnchor),
                                 textField.heightAnchor.constraint(equalToConstant: 29),
                                 textField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
                                 textField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20)])
  }
  
  private func setupButton() {
    addSubview(button)
    button.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([button.centerXAnchor.constraint(equalTo: centerXAnchor),
                                 button.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 20)])
  }
}
