//
//  ToDoItemTests.swift
//  ToDoTests
//
//  Created by Marian König on 21.01.19.
//  Copyright © 2019 none. All rights reserved.
//

import XCTest
import CoreLocation
@testable import ToDo

class ToDoItemTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func test_Init_WhenGivenTitle_SetsTitle(){
        let item = ToDoItem(title: "Foo")
        XCTAssertEqual(item.title, "Foo", "should set title")
    }
    
    func test_Init_WhenGivenDescription_SetsDescription(){
        let item = ToDoItem(title:"",itemDescription:"Bar")
        XCTAssertEqual(item.itemDescription, "Bar", "should set itemDescription")
    }
    
    func test_Init_SetsTimestamp() {
        let item = ToDoItem(title: "", timestamp: 0.0)
        XCTAssertEqual(item.timestamp, 0.0, "should set timestamp")
    }
    
    func test_Init_WhenGivenLocation_SetsLocation() {
        let location = Location(name:"Foo")
        let item = ToDoItem(title:"",location:location)
        XCTAssertEqual(item.location?.name, location.name,"should set location")
    }
    
    func text_EqualItems_AreEqual() {
        let first = ToDoItem(title: "", itemDescription: "", timestamp: 1, location: Location(name: "", coordinate: CLLocationCoordinate2D(latitude: 1, longitude: 1)))
        let second = ToDoItem(title: "", itemDescription:"", timestamp: 1, location: Location(name: "", coordinate: CLLocationCoordinate2D(latitude: 1, longitude: 1)))
        XCTAssertEqual(first,second)
    }
    
    func test_Items_WhenTitleDiffers_AreNotEqual(){
        let first = ToDoItem(title: "Foo")
        let second = ToDoItem(title: "Bar")
        XCTAssertNotEqual(first, second)
    }
    
    func test_Items_WhenLocationDiffers_AreNotEqual(){
        let first = ToDoItem(title: "",
                             location: Location(name: "Foo"))
        let second = ToDoItem(title: "",
                              location: Location(name: "Bar"))
        XCTAssertNotEqual(first, second)
    }
    
    func test_Items_WhenTimeStampDiffers_AreNotEqual(){
        let first = ToDoItem(title: "", itemDescription: "", timestamp: 1)
        let second = ToDoItem(title: "", itemDescription: "", timestamp: 2)
        XCTAssertNotEqual(first,second)
    }
    
    func test_Items_WhenDescriptionDiffers_AreNotEqual(){
        let first = ToDoItem(title:"",itemDescription:"Foo")
        let second = ToDoItem(title:"",itemDescription:"Bar")
        XCTAssertNotEqual(first,second)
    }

}
