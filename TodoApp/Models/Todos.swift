//
//  Todos.swift
//  TodoApp
//
//  Created by Przemek Smyrdek on 20/07/2020.
//  Copyright © 2020 Przemek Smyrdek. All rights reserved.
//

import Foundation

struct Todo: Identifiable {
    var id: Int
    var text: String
    var isCompleted: Bool = false
}

struct Todos {
    var todos: [Todo] = []
    
    mutating func add(todo: String) {
        var newId = 0
        if let last = todos.last {
            newId = last.id + 1
        }
        self.todos.append(Todo(id: newId, text: todo))
    }
    
    mutating func remove(id: Int) {
        self.todos = self.todos.filter({ todo in
            todo.id != id
        })
    }
    
    mutating func changeCompletionStatus(id: Int, isCompleted: Bool) {
        if let index = self.todos.firstIndex(where: {todo in todo.id == id}) {
            self.todos[index].isCompleted = isCompleted
        }
    }
}
