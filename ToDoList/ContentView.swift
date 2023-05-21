//
//  ContentView.swift
//  ToDoList
//
//  Created by Mandy Chen on 5/18/23.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var context

    @FetchRequest(
            sortDescriptors: [ NSSortDescriptor(keyPath: \ToDo.id, ascending: false) ])
        
    var toDoItems: FetchedResults<ToDo>

    @State private var showNewTask = false

    var body: some View {
       
        VStack(spacing: 20.0) {
            HStack (spacing: 15) {
                Text("To Do List")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.pink)
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
                        Text("‼️" + (toDoItem.title ?? "No title"))
                    } else {
                        Text(toDoItem.title ?? "No title")
                    }
                }
                .onDelete(perform: deleteTask)

            }
            .listStyle(.plain)
            
        }
        
        .padding()

        if showNewTask {
            NewToDoView(showNewTask: $showNewTask, title: "", isImportant: false)
                }
        
    
                }
    
    private func deleteTask(offsets: IndexSet) {
            withAnimation {
                offsets.map { toDoItems[$0] }.forEach(context.delete)

                do {
                    try context.save()
                } catch {
                    print(error)
                }
            }
        }
            }
        

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
