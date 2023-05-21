//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Mandy Chen on 5/19/23.
//

import SwiftUI

struct NewToDoView: View {
    @Environment(\.managedObjectContext) var context

    @Binding var showNewTask : Bool

    @State var title: String
    @State var isImportant: Bool

    var body: some View {

        
        VStack{
            Text("Add a new task")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color.pink)
            
            TextField("Enter the task description", text: $title)
                .background((Color(.systemGroupedBackground)))
                .cornerRadius(8)
                .padding()
                .italic()
                .multilineTextAlignment(.center)
                .dynamicTypeSize(/*@START_MENU_TOKEN@*/.xxLarge/*@END_MENU_TOKEN@*/)
            
            Toggle(isOn: $isImportant) {
                HStack{
                    Spacer()
                    Text("‼️ Is it important?")
                        .font(.title2)
                        .foregroundColor(Color.black)
                    Spacer()
                }
            }
            
            Button(action: {self.addTask(title: self.title, isImportant: self.isImportant)
                self.showNewTask = false
            }) {
                Text("Add")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(Color.pink)
            }
            .padding()
            .background((Color(.systemGroupedBackground)))
            .cornerRadius(10)
            .padding(55)
        }
        .background((Color(.systemGroupedBackground)))

    }
    
    private func addTask(title: String, isImportant: Bool = false) {
        let task = ToDo(context: context)
        task.id = UUID()
        task.title = title
        task.isImportant = isImportant
                
        do {
                    try context.save()
        } catch {
                    print(error)
        }

        }
}


struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(showNewTask: .constant(true), title: "", isImportant: false)
    }


}
