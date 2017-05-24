//
//  ViewController.swift
//  testRealmRxTodos
//
//  Created by Jimmy Hoang on 3/20/17.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

import UIKit
import Alamofire


class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let menu = UIMenuController.shared
        menu.setTargetRect(CGRect.zero, in: self.view)
        menu.arrowDirection = .down
        menu.setMenuVisible(true, animated: true)

        let menuItem = UIMenuItem(title: "Delete", action: #selector(handleDelete))
        
        menu.menuItems = [menuItem]
    }
    
    func handleDelete(sender: UIMenuItem) {
        print("delete")
    }
    
}

