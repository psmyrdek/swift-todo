//
//  TodoListController.swift
//  TodoApp
//
//  Created by Przemek Smyrdek on 20/07/2020.
//  Copyright © 2020 Przemek Smyrdek. All rights reserved.
//

import Foundation

class TodoListController: ObservableObject {
    
    @Published private var todos: Todos = Todos()
    
    var todosNotCompleted: [Todo] {
        return todos.todos.filter { !$0.isCompleted }
    }
    
    var todosCompleted: [Todo] {
        return todos.todos.filter { $0.isCompleted }
    }
    
    func addTodo(todo: String) {
        todos.add(todo: todo)
    }
    
    func removeTodo(id: Int) {
        todos.remove(id: id)
    }
    
    func changeCompletionStatus(id: Int, isCompleted: Bool) {
        todos.changeCompletionStatus(id: id, isCompleted: isCompleted)
    }
    
}
