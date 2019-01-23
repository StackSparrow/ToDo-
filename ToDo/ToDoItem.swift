//
//  ToDoItem.swift
//  ToDo
//
//  Created by Marian König on 21.01.19.
//  Copyright © 2019 none. All rights reserved.
//

struct ToDoItem {
    
    let title: String
    let itemDescription: String?
    let timestamp: Double?
    let location: Location?
    
    init(title:String,itemDescription:String? = nil,timestamp:Double? = nil,location:Location? = nil){
        self.title = title
        self.itemDescription = itemDescription
        self.timestamp = timestamp
        self.location = location
    }
    
}
