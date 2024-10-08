//
//  EditTaskView.swift
//  TodoDemo
//
//  Created by شهد علي on 05/04/1446 AH.
//

import SwiftUI
import SwiftData

struct EditTaskView: View {
    @Environment(\.modelContext) var context
    @Environment(\.dismiss) private var dismiss
    
    
    @State var titel:String = ""
    @State var completed:Bool = false
    
    @Bindable var task: Task
    
    var body: some View {
        NavigationStack {
            VStack {
                TextField("Add Task", text: $task.titel)
                    .textFieldStyle(.roundedBorder)
                
         
                Spacer()
            }
            .padding()
           
            .navigationTitle("Edit Task")
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    ToolbarItemGroup (placement: .topBarTrailing){
                        Button("Done"){
                          dismiss()
                           
                        }
                    }
                }
                
        }.padding()
    }
}

//#Preview {
  //  EditTaskView(task: Task(titel: "Do Homework", completed: false))
//}
