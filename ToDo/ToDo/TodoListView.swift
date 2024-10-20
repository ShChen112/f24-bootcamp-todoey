//
//  TodoListView.swift
//  ToDo
//
//  Created by Sherry Chen on 10/8/24.
//

import SwiftUI

struct TodoListView: View {
    @State var todos = Todo.exampleList
    @State var inputTodo: String = ""
    var body: some View {
        NavigationStack{
            Section("Add To-do"){
                Form {
                    TextField("Type in to-do", text: $inputTodo)
                }
                .onSubmit{
                     
                }
            }
            
            }
            Section("To-do List"){
                List{
                    ForEach($todos) { $todo in
                        TodoRowView(todo: $todo)
                    }
                }
            }
            .navigationTitle("Todos")
        }
    }

#Preview {
    TodoListView()
}
