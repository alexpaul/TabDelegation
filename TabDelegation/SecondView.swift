//
//  SecondView.swift
//  TabDelegation
//
//  Created by Alex Paul on 12/12/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SecondView: UIView {
  
  public lazy var label: UILabel = {
    let l = UILabel()
    return l
  }()
  
  override init(frame: CGRect) {
    super.init(frame: UIScreen.main.bounds)
    commonInit()
  }
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
    commonInit()
  }
  
  private func commonInit() {
    backgroundColor = .orange
    setupLabel()
  }
    
  private func setupLabel() {
    addSubview(label)
    label.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([label.centerXAnchor.constraint(equalTo: centerXAnchor),
                                 label.centerYAnchor.constraint(equalTo: centerYAnchor)])
  }

}
