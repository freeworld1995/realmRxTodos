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
        print("sexuyasdasdas")
    }
    
    func handleDelete(sender: UIMenuItem) {
        print("delete")
    }
    
    // master1
    // master2
    
    // camera 01
    // camera 02
    // master 03
    // master 04
    // camera 03
    // camera 04
    // camera 05
}

