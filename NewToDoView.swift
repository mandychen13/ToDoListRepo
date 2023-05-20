//
//  NewToDoView.swift
//  ToDoList
//
//  Created by Mandy Chen on 5/19/23.
//

import SwiftUI

struct NewToDoView: View {
    @State var title: String
    @State var isImportant: Bool
    
    var body: some View {
        VStack{
            
            Text("Add a new task")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.pink)
                
          
            TextField("Enter the task description", text: $title)
                .padding()
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
                        .padding()           .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black)
                    Spacer()
                }
                }
           

            Button(action: {
              
            }) {
                Text("Add")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.pink)
            }
            .padding()
            .background((Color(.systemGroupedBackground)))
            .cornerRadius(10)
            .padding(55)

        }
        
    }
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false)
    }
}
