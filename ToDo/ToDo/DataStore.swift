//
//  DataStore.swift
//  ToDo
//
//  Created by Mariana Moura de Barros on 24/09/23.
//

import Foundation
import SwiftUI
import Combine

struct Task: Identifiable {
    var id = String()
    var toDoItem = String()
    
    //Add more complicated stuff later if you want.
}

class TaskStore: ObservableObject {
    @Published var tasks = [Task]()
}
