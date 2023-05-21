//
//  ToDoItem.swift
//  ToDoList
//
//  Created by Mandy Chen on 5/18/23.
//

class ToDoList: Identifiable {
    var id = UUID()
    var title = ""
    var isImportant = false
    
    init(title: String, isImportant: Bool = false) {
            self.title = title
            self.isImportant = isImportant
        }
}


import Foundation
