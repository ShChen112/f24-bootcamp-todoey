//
//  TodoListView.swift
//  To Do test
//
//  Created by Sherry Chen on 10/12/24.
//

import Foundation
import SwiftUICore
import SwiftUI
struct TodoListView: View {
    @State private var todoList = Todo.exampleList
    let color: Color
    var body: some View {
        List {
            ForEach(todoList) { todo in
                TodoRowView(todo: todo, color: color)
            }
            .onDelete(perform: removeRows)
        }
        .listStyle(.plain)
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Text("Todo")
                    .font(.largeTitle)
                    .bold()
                    .fontDesign(.rounded)
                    .foregroundStyle(color)
            }
            ToolbarItem(placement: .bottomBar) {
                HStack {
                    Button {
                        todoList.append(Todo(text: ""))
                    } label: {
                        Image(systemName: "plus.circle.fill")
                        Text("New Todo")
                    }
                    .buttonStyle(.plain)
                    .foregroundStyle(color)
                    .fontDesign(.rounded)
                    .bold()
                    Spacer()
                }
            }
        }
    }
    func removeRows(at offsets: IndexSet) {
        todoList.remove(atOffsets: offsets)
    }
}

#Preview {
    NavigationStack {
        TodoListView(color: .pink)
    }
}
