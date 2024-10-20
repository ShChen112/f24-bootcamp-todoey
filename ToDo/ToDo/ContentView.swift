//
//  ContentView.swift
//  ToDo
//
//  Created by Sherry Chen on 10/8/24.
//

import SwiftUI
struct Todo: Identifiable {
    var id = UUID()
    var task: String
    var isDone: Bool
}
extension Todo {
    static let example = Todo(task: "Do homework", isDone: true)
    static let exampleList = [Todo(task:"Do dishes", isDone: true), Todo(task: "Draw", isDone: false)]
    
}
struct ContentView: View {
    @State var todos = [Todo(task:"Do dishes", isDone: true), Todo(task: "Draw", isDone: false)]
    var body: some View {
        ForEach(todos) { todo in
            Text(todo.task)
        }
    }
}

#Preview {
    ContentView()
}
