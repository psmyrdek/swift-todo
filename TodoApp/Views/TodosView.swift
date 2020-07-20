//
//  TodosView.swift
//  TodoApp
//
//  Created by Przemek Smyrdek on 20/07/2020.
//  Copyright © 2020 Przemek Smyrdek. All rights reserved.
//

import SwiftUI

struct TodosView: View {
    
    var listName: String
    var todos: [Todo]
    
    var onCompletionChange: (Int, Bool) -> Void
    var onRemove: (Int) -> Void
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(listName)
                .font(.title)
            
            Divider()
                .frame(height: 1)
            
            if self.todos.isEmpty {
                Text("There are no todos in this section")
            } else {
                ForEach(self.todos) { todo in
                    TodosEntryView(
                        todo: todo,
                        onCompletionChange: self.onCompletionChange,
                        onRemove: self.onRemove
                    )
                }
            }
        }
    }
}
