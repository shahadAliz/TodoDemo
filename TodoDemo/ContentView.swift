//
//  ContentView.swift
//  TodoDemo
//
//  Created by شهد علي on 29/03/1446 AH.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var context
    
    @State private var isShowingAddTaskSheet = false
    @State private var isShowingEditTaskSheet = false
    
    @Query (sort:\Task.titel) private var tasks: [Task]
    
    @State private var taskToEdit: Task?
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(tasks){
                    task in
                    TaskRowView (task: task)
                        .gesture(

                        TapGesture (count: 2).onEnded {

                        // edit data
                            taskToEdit = task
                            isShowingEditTaskSheet = true

                        }.exclusively(before: TapGesture(count: 1).onEnded {

                       // change complete value
                            task.completed.toggle()
                        }))
                }
                
            }
            
           
            .navigationTitle("Tasks")
                .navigationBarTitleDisplayMode(.large)
                .sheet(isPresented: $isShowingAddTaskSheet) {
                    AddTaskView()
                }
                .sheet(item: $taskToEdit) { task in
                    if !tasks.isEmpty {
                       EditTaskView( task: task)
                    }
                }
                
                .toolbar {
                    ToolbarItemGroup (placement: .topBarTrailing){
                        Button("",systemImage: "plus"){
                            // show add viwe
                            isShowingAddTaskSheet = true
                        }
                    }
                }
        }
    }
}
 #Preview {
   ContentView()
}

