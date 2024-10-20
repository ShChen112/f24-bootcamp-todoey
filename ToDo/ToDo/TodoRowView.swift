//
//  TodoRowView.swift
//  ToDo
//
//  Created by Sherry Chen on 10/8/24.
//

import SwiftUI
struct TodoRowView: View {
    @Binding var todo: Todo
    
        var body: some View {
            HStack {
                Button {
                    todo.isDone.toggle()
                } label: {
                    Image(systemName: todo.isDone ? "checkmark.square.fill" : "square")
                }
                Text(todo.task)
            }
            }
    }
#Preview {
    @Previewable @State var todo: Todo(text: "do dishes", isDone: false)
    TodoRowView(todo: Todo.example)
}
