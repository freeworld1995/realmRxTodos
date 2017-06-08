//
//  ViewController.swift
//  testRealmRxTodos
//
//  Created by Jimmy Hoang on 3/20/17.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

import UIKit
import Alamofire

// a
// b
// c
// d

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
        // nigga 
        // error 2
        
        // I push this but this shit is WRONG !!!
        // another shit i dont want
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
    // camera 06
    // camera 07
    // camera 08
    // master 05
    // master 06
    // camera 11
    // camera 12
    // camera 13
    // master 11
    // master 12
    // master 21
    // master 22
    // camera 21
    // camera 22
    // camera 23
    // camera 24
}

