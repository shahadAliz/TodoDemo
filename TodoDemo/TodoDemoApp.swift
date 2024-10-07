//
//  TodoDemoApp.swift
//  TodoDemo
//
//  Created by شهد علي on 29/03/1446 AH.
//

import SwiftUI
import SwiftData
@main
struct TodoDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for:[Task.self])
        }
    }
}
