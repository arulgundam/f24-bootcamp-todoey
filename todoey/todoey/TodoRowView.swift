//
//  TodoRowView.swift
//  todoey
//
//  Created by Arul Gundam on 10/14/24.
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
    TodoRowView(todo: .example, color: .purple)
}
