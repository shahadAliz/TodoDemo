//
//  AddTaskView.swift
//  TodoDemo
//
//  Created by شهد علي on 04/04/1446 AH.
//

import SwiftUI

struct AddTaskView: View {
    @State var titel:String = ""
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Add Task", text: $titel )
                    .textFieldStyle(.roundedBorder)
                HStack{
                    Button("Add"){
                       // save data
                    }
                    .padding()
                    
                    Button("Cancel"){
                       // save data
                    }.padding()
                }
                Spacer()
            }
            .padding()
           
            .navigationTitle("Tasks")
                .navigationBarTitleDisplayMode(.large)
                
        }.padding()
    }
}

#Preview {
    AddTaskView()
}
