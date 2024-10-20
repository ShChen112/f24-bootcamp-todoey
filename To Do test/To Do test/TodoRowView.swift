//
//  TodoRowView.swift
//  To Do test
//
//  Created by Sherry Chen on 10/13/24.
//

import Foundation
import SwiftUICore
import SwiftUI
struct TodoRowView: View {
    @State var todo: Todo
    let color: Color
    var body: some View {
        HStack {
            Button {
                todo.isDone.toggle()
            } label: {
                Image(systemName: todo.isDone ? "checkmark.square.fill" : "square")
            }
            .foregroundStyle(color)
            TextField("", text: $todo.text)
        }
    }
}

#Preview {
    TodoRowView(todo: .example, color: .pink)
}
