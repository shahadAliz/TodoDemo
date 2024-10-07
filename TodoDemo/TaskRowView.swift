//
//  TaskRowView.swift
//  TodoDemo
//
//  Created by شهد علي on 04/04/1446 AH.
//

import SwiftUI

struct TaskRowView: View {
    var completed: Bool = false
    var body: some View {
        HStack {
            Image(systemName:completed ? "checkmark.circle" : "circle")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Do Homework")
        }
    }
}

#Preview {
    TaskRowView()
}
