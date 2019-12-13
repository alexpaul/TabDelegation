//
//  TabViewController.swift
//  TabDelegation
//
//  Created by Alex Paul on 12/12/19.
//  Copyright © 2019 Alex Paul. All rights reserved.
//

import UIKit

class TabViewController: UITabBarController {

  private var firstVC: FirstViewController!
  private var secondVC: SecondViewController!
  
  private var dataModel: DataModel!
 
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // dataModel is initiated in Parent tab bar controller
    dataModel = DataModel()
   
    // then dependency injection is used to pass model to view controllers
    firstVC = FirstViewController(dataModel: dataModel)
    secondVC = SecondViewController(dataModel: dataModel)
    
    // this forces both views viewDidLoad to run so delegates are configured
    firstVC.loadViewIfNeeded()
    secondVC.loadViewIfNeeded()
    
    firstVC.tabBarItem = UITabBarItem(title: "First",
                                      image: UIImage(systemName: "1.circle"),
                                      tag: 0)
    
    secondVC.tabBarItem = UITabBarItem(title: "Second",
                                      image: UIImage(systemName: "2.circle"),
                                      tag: 1)
    
    viewControllers = [firstVC, secondVC]
  }
  
}
