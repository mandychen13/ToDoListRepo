//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Mandy Chen on 5/18/23.
//

class ToDoItem {
    var title = ""
    var isImportant = false
    
    init(title: String, isImportant: Bool = false) {
            self.title = title
            self.isImportant = isImportant
        }
}


import Foundation
