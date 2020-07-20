//
//  TodoListView.swift
//  TodoApp
//
//  Created by Przemek Smyrdek on 20/07/2020.
//  Copyright © 2020 Przemek Smyrdek. All rights reserved.
//

import SwiftUI

struct TodoListView: View {
    
    @ObservedObject var todos: TodoListController
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ComposerView(onTodoComposed: { todo in
                    self.todos.addTodo(todo: todo)
                })
                TodosView(listName: "Active", todos: todos.todosNotCompleted)
                    .padding([.vertical], 5)
                TodosView(listName: "Completed", todos: todos.todosCompleted)
                    .padding([.vertical], 5)
            }.padding()
        }
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        let controller = TodoListController()
        controller.addTodo(todo: "test")
        controller.addTodo(todo: "test")
        controller.addTodo(todo: "test")
        return TodoListView(todos: controller)
    }
}

