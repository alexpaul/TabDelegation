//
//  DataModel.swift
//  TabDelegation
//
//  Created by Alex Paul on 12/12/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import Foundation

protocol DataModelDelegate: AnyObject {
  func didUupdateName(_ model: DataModel, name: String) // data we want to pass in name
}

final class DataModel {
  
  weak var delegate: DataModelDelegate?
  
  private var name = ""
  
  init() {
    // code here
  }
  
  public func getName() -> String {
    return name
  }
  
  public func setName(name: String) {
    self.name = name
    delegate?.didUupdateName(self, name: name)
  }
}
