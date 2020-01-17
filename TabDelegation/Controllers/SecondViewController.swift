//
//  SecondViewController.swift
//  TabDelegation
//
//  Created by Alex Paul on 12/12/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
  
  private var dataModel: DataModel!
  
  init(dataModel: DataModel) {
    super.init(nibName: nil, bundle: nil)
    self.dataModel = dataModel
    self.dataModel.delegate = self
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
    
  private let secondView = SecondView()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.addSubview(secondView)
    dataModel.delegate = self
  }
}

// conforms to data model delegate to get updates when the model changes
extension SecondViewController: DataModelDelegate {
  func didUupdateName(_ model: DataModel, name: String) {
    secondView.label.text = name
  }
}
