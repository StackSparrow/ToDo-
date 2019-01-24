//
//  ItemListViewControllerTest.swift
//  ToDoTests
//
//  Created by Marian König on 23.01.19.
//  Copyright © 2019 none. All rights reserved.
//

import XCTest
@testable import ToDo

class ItemListViewControllerTests: XCTestCase {

    var sut : ItemListViewController!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let storyboard = UIStoryboard(name: "Main", bundle:nil)
        sut = storyboard.instantiateViewController(withIdentifier: "ItemListViewController") as! ItemListViewController
         sut.loadViewIfNeeded() //never call viewDidLoad from here
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_ListViewController_AfterViewDidLoad_IsNotNil(){
        XCTAssertNotNil(sut)
    }
    
    func test_TableView_AfterViewDidLoad_IsNotNil(){
        XCTAssertNotNil(sut.tableView)
    }
    
    func test_TableView_AfterViewDidLoad_DataSourceIsNotNil(){
        XCTAssertNotNil(sut.tableView.dataSource)
    }
    
    func test_LoadingView_SetsTableViewDataSource(){
        XCTAssertTrue(sut.tableView.dataSource is ItemListDataProvider)
    }
    
    func test_LoadingView_SetsTableViewDelegate() {
        XCTAssertTrue(sut.tableView.delegate is ItemListDataProvider)
    }
    
    func test_LoadingView_DataSourceEqualDelegate() {
        XCTAssertEqual(sut.tableView.dataSource as? ItemListDataProvider,
                       sut.tableView.delegate as? ItemListDataProvider)
    }

}
