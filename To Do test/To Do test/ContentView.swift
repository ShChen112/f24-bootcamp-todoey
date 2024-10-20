//
//  ContentView.swift
//  To Do test
//
//  Created by Sherry Chen on 10/12/24.
//

import SwiftUI
struct Todo: Identifiable {
    let id = UUID()
    var isDone = false
    var text: String
}

extension Todo {
    static var example: Todo {
        Todo(text: "Walk the dog")
    }
    static var exampleList: [Todo] {
        [Todo(text: "Walk the dog"), Todo(text: "Feed the hog"), Todo(isDone: true, text: "Eat breakfast")]
    }
}
struct ContentView: View {
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
