//
//  AlamoManager.swift
//  testRealmRxTodos
//
//  Created by Jimmy Hoang on 3/20/17.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

import Alamofire
import SwiftyJSON

class AlamoManager: NSObject {
    static var shared = AlamoManager();
    
    func fetchTodos() {
        Alamofire.request("https://jsonplaceholder.typicode.com/todos").responseJSON { (response) in
            print(response.request)  // original URL request
            print(response.response) // HTTP URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization
        }
    }
}
