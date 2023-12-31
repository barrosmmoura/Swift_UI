//
//  ContentView.swift
//  ToDo
//
//  Created by Mariana Moura de Barros on 24/09/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var taskStore = TaskStore()
    @State var newToDo : String = ""
    
    var searchBar: some View {
        HStack {
            TextField("Insira uma nova tarefa", text: self.$newToDo)
            Button(action: self.addNewToDo, label: {Text("Adicionar")})
        }
    }
    
    func addNewToDo() {
        taskStore.tasks.append(Task(id: String(taskStore.tasks.count + 1), toDoItem: newToDo))
        self.newToDo = ""
        
    }
    
    
    var body: some View {
        NavigationView {
            VStack {
                searchBar.padding()
                
                
                List {
                    ForEach(self.taskStore.tasks) {
                        task in
                        Text(task.toDoItem)
                    }.onMove(perform: self.move)
                        .onDelete(perform: self.delete)
                    
                }.navigationBarTitle("Tarefas")
                
            
                    .navigationBarItems(trailing: EditButton())
            }
        }
    }
    func move(from source : IndexSet, to destination : Int){
        taskStore.tasks.move(fromOffsets: source, toOffset: destination)
    }
    
    func delete(at offsets: IndexSet) {
        taskStore.tasks.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
