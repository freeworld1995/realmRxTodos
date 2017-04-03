//
//  TodosDatasource.swift
//  testRealmRxTodos
//
//  Created by Jimmy Hoang on 4/2/17.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

import UIKit
//
//class TodosDatasource: NSObject, ItemTableViewDatasource {
//    var items: [Todo] = []
//    weak var tableView: UITableView?
//    weak var delegate: UITableViewDelegate?
//    
//    required init(items: [Todo], tableView: UITableView, delegate: UITableViewDelegate) {
//        self.items = items
//        self.tableView = tableView
//        self.delegate = delegate
//        super.init()
//        self.setupTableView()
//    }
//    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return items.count
//    }
//    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as? UITableViewCell
//        let todo = items[indexPath.row]
//        cell?.textLabel?.text = todo.title
//        return cell
//    }
//}
