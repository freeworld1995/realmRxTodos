//
//  VisitorCount.swift
//  testRealmRxTodos
//
//  Created by Jimmy Hoang on 4/2/17.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

import Foundation
import RealmSwift

class VisitorCount: Object {
    dynamic var date: Date = Date()
    dynamic var count: Int = Int(0)
    
    func save() {
        do {
            let realm = try Realm()
            try realm.write {
                realm.add(self)
            }
        } catch let error as NSError {
            fatalError(error.localizedDescription)
        }
    }
    
}

