//
//  ItemListViewController.swift
//  ToDo
//
//  Created by Marian König on 17.01.19.
//  Copyright © 2019 none. All rights reserved.
//

import UIKit

class ItemListViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet var dataProvider: ItemListDataProvider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = dataProvider
        tableView.delegate = dataProvider
    }
}

