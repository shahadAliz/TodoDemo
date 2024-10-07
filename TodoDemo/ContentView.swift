//
//  ContentView.swift
//  TodoDemo
//
//  Created by شهد علي on 29/03/1446 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                TaskRowView (completed: false)
            }
            
           
            .navigationTitle("Tasks")
                .navigationBarTitleDisplayMode(.large)
                .toolbar {
                    ToolbarItemGroup (placement: .topBarTrailing){
                        Button("",systemImage: "plus"){
                            // show add viwe
                        }
                    }
                }
        }
    }
}

#Preview {
    ContentView()
}
