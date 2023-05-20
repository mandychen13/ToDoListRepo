//
//  ContentView.swift
//  ToDoList
//
//  Created by Mandy Chen on 5/18/23.
//

import SwiftUI

struct ContentView: View {
    @State var toDoItems: [ToDoItem] = []
    @State private var showNewTask = false

    var body: some View {
       
        VStack(spacing: 20.0) {
            
            // Title of List
            HStack (spacing: 15) {
                Text("To Do List")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.pink)
                //Button
                Button (action: {  self.showNewTask = true
                    
                }) {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.blue)
                }
                .buttonStyle(.bordered)
            }
            .padding()
            Spacer()

            List {
                ForEach (toDoItems) { toDoItem in
                    if toDoItem.isImportant == true {
                        Text("‼️" + toDoItem.title)
                    } else {
                        Text(toDoItem.title)
                    }
                }
            }
            .listStyle(.plain)

            
        }
        
        .padding()

        if showNewTask {
            NewToDoView(toDoItems: $toDoItems, showNewTask: $showNewTask, title: "", isImportant: false)
                }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
