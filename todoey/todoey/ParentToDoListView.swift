//
//  ParentToDoListView.swift
//  todoey
//
//  Created by Arul Gundam on 10/14/24.
//

import SwiftUI

struct ParentTodoListView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink("Homework") {
                    TodoListView(color: .red)
                }
                .foregroundStyle(.red)
                NavigationLink("Chores") {
                    TodoListView(color: .purple)
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
