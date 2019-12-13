//
//  FirstViewController.swift
//  TabDelegation
//
//  Created by Alex Paul on 12/12/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
  
  private let firstView = FirstView()
  
  private var dataModel: DataModel!
  
  init(dataModel: DataModel) {
    super.init(nibName: nil, bundle: nil)
    self.dataModel = dataModel
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(firstView)
    firstView.button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
  }
  
  @objc
  private func buttonPressed() {
    firstView.textField.resignFirstResponder()
    dataModel.setName(name: firstView.textField.text ?? "")
  }
}
