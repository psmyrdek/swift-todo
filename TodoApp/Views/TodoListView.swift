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
    
    func onTodoRemove(id: Int) -> Void {
        todos.removeTodo(id: id)
    }
    
    func onChangeCompletionStatus(id: Int, isCompleted: Bool) -> Void {
        todos.changeCompletionStatus(id: id, isCompleted: isCompleted)
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                ComposerView(onTodoComposed: { todo in
                    self.todos.addTodo(todo: todo)
                })
                TodosView(listName: "Active", todos: todos.todosNotCompleted, onCompletionChange: onChangeCompletionStatus, onRemove: onTodoRemove)
                    .padding([.top], 20)
                TodosView(listName: "Completed", todos: todos.todosCompleted, onCompletionChange: onChangeCompletionStatus, onRemove: onTodoRemove)
                    .padding([.top], 20)
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

