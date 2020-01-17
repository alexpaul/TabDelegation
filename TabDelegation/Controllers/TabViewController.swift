//
//  TabViewController.swift
//  TabDelegation
//
//  Created by Alex Paul on 12/12/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController {
  private var dataModel = DataModel()
  
  private lazy var firstVC: FirstViewController = {
    let viewcontroller = FirstViewController(dataModel: dataModel)
    viewcontroller.tabBarItem = UITabBarItem(title: "First",
                                             image: UIImage(systemName: "1.circle"),
                                             tag: 0)
    return viewcontroller
  }()
  
  private lazy var secondVC: SecondViewController = {
    let viewcontroller = SecondViewController(dataModel: dataModel)
    viewcontroller.tabBarItem = UITabBarItem(title: "Second",
                                             image: UIImage(systemName: "2.circle"),
                                             tag: 1)
    return viewcontroller
  }()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    viewControllers = [firstVC, secondVC]
  }
}
