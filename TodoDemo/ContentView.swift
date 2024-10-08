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
    
    @State private var isShowingTaskSheet = false
    
    @Query (sort:\Task.titel) private var tasks: [Task]
    var body: some View {
        NavigationStack {
            List {
                ForEach(tasks){
                    task in
                    TaskRowView (task: task)
                        .gesture(

                        TapGesture (count: 2).onEnded {

                        // edit data

                        }.exclusively(before: TapGesture(count: 1).onEnded {

                       // change complete value
                            task.completed.toggle()
                        }))
                }
                
            }
            
           
            .navigationTitle("Tasks")
                .navigationBarTitleDisplayMode(.large)
                .sheet(isPresented: $isShowingTaskSheet) {
                    AddTaskView()
                }
                .toolbar {
                    ToolbarItemGroup (placement: .topBarTrailing){
                        Button("",systemImage: "plus"){
                            // show add viwe
                            isShowingTaskSheet = true
                        }
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
