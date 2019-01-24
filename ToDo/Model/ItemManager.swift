//
//  ItemManager.swift
//  ToDo
//
//  Created by Marian König on 23.01.19.
//  Copyright © 2019 none. All rights reserved.
//

import Foundation

class ItemManager {
    
    var toDoCount : Int { return toDoItems.count }
    var doneCount : Int { return doneItems.count }
    private var toDoItems = [ToDoItem]()
    private var doneItems = [ToDoItem]()
    
    func add(_ item: ToDoItem) {
        guard !toDoItems.contains(item) else {
            return
        }
        toDoItems.append(item)
    }
    
    func item(at index: Int) -> ToDoItem {
        return toDoItems[index]
    }
    
    func checkItem(at index: Int){
        let item = toDoItems.remove(at: index)
        doneItems.append(item)
    }
    
    func doneItem(at index: Int) -> ToDoItem {
        return doneItems[index]
    }
    
    func removeAll(){
        toDoItems.removeAll()
        doneItems.removeAll()
    }
}
