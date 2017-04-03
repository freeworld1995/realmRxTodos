//
//  ItemTableViewDatasource.swift
//  testRealmRxTodos
//
//  Created by Jimmy Hoang on 4/2/17.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

import UIKit

protocol ItemTableViewDatasource: UITableViewDataSource {
    associatedtype T
    
    var items:[T] {get}
    weak var tableView: UITableView? {get}
    weak var delegate: UITableViewDelegate? {get}
    
    init(items:[T], tableView: UITableView, delegate: UITableViewDelegate)
    
    func setupTableView()
}

extension ItemTableViewDatasource {
    func setupTableView() {
        self.tableView?.dataSource = self
        self.tableView?.delegate = self.delegate
        self.tableView?.reloadData()
    }
}
