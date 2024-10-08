//
//  AddTaskView.swift
//  TodoDemo
//
//  Created by شهد علي on 04/04/1446 AH.
//

import SwiftUI
import SwiftData

struct AddTaskView: View {
    @Environment(\.modelContext) var context
    @Environment(\.dismiss) private var dismiss
    
    
    @State var titel:String = ""
    @State var completed:Bool = false
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Add Task", text: $titel )
                    .textFieldStyle(.roundedBorder)
                HStack{
                    Button("Add"){
                       // save data
                        let task = Task(titel: titel, completed: completed)
                        context.insert(task)
                        dismiss()
                        
                    }
                    .padding()
                    
                    Button("Cancel"){
                       // dismiss sheet
                        dismiss()
                    }.padding()
                }
                Spacer()
            }
            .padding()
           
            .navigationTitle("Add Tasks")
                .navigationBarTitleDisplayMode(.large)
                
        }.padding()
    }
}

#Preview {
    AddTaskView()
}
