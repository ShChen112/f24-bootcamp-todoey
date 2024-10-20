//
//  ParentTodoListView.swift
//  To Do test
//
//  Created by Sherry Chen on 10/12/24.
//

import Foundation
import SwiftUICore
import SwiftUI
struct ParentTodoListView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Homework") {
                    TodoListView(color: .purple)
                }
                .foregroundStyle(.red)
                NavigationLink("Chores") {
                    TodoListView(color: .pink)
                }
                .foregroundStyle(.purple)
            }
            .navigationTitle("Reminders")
        }
    }
}

#Preview {
    ParentTodoListView()
}
