//
//  ContentView.swift
//  ToDoList
//
//  Created by Mandy Chen on 5/18/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        VStack(spacing: 20.0) {
            
        // Title of List
            HStack (spacing: 15) {
                Text("To Do List")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.pink)
        //Button
                Button (action: {
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
        }
        .padding()

        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
