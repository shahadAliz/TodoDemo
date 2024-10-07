//
//  TaskRowView.swift
//  TodoDemo
//
//  Created by شهد علي on 04/04/1446 AH.
//

import SwiftUI

struct TaskRowView: View {
    var completed: Bool = false
    var task: Task
    var body: some View {
        HStack {
            Image(systemName:task.completed ? "checkmark.circle" : "circle")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(task.titel)
        }
    }
}

#Preview {
    TaskRowView( task: Task(titel: "Do Homework", completed: false))
}
