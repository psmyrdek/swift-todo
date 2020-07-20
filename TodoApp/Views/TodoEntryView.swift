//
//  TodosEntryView.swift
//  TodoApp
//
//  Created by Przemek Smyrdek on 20/07/2020.
//  Copyright © 2020 Przemek Smyrdek. All rights reserved.
//

import SwiftUI

struct TodosEntryView: View {
    
    var todo: Todo
    
    var onCompletionChange: (Int, Bool) -> Void
    var onRemove: (Int) -> Void
    
    func onTodoRemove() {
        onRemove(todo.id)
    }
    
    func onChangeCompletionStatus() {
        onCompletionChange(todo.id, !todo.isCompleted)
    }
    
    var body: some View {
        let iconName = todo.isCompleted
            ? "checkmark.square.fill"
            : "checkmark.square"
        return HStack {
            TodoEntryButton(iconSystemName: iconName, buttonAction: onChangeCompletionStatus)
            Text(todo.text)
            Spacer()
            TodoEntryButton(iconSystemName: "trash", buttonAction: onTodoRemove)
        }
    }
}
