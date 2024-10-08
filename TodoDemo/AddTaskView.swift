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
                    .controlSize(.large)
                    .buttonStyle(.borderedProminent)
                    .padding()
                    .frame(maxWidth: .infinity)
                   
                    
                    Button("Cancel"){
                       // dismiss sheet
                        dismiss()
                    }
                    .controlSize(.large)
                    .buttonStyle(.borderedProminent)
                    .padding()
                    .frame(maxWidth: .infinity)
                   
                }
                .fixedSize(horizontal: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                .padding()
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
