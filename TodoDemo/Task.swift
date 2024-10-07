//
//  Task.swift
//  TodoDemo
//
//  Created by شهد علي on 04/04/1446 AH.
//

import Foundation
import SwiftData

@Model
class Task {
    
    var titel: String
    var completed: Bool
    
    init(titel: String, completed: Bool) {
        
        self.titel = titel
        self.completed = completed
    }
}
