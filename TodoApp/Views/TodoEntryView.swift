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
    
    func onRemove() {
        print("removing \(todo.id)")
    }
    
    func onChangeCompletionStatus() {
        
    }
    
    var body: some View {
        let iconName = todo.isCompleted
            ? "checkmark.square.fill"
            : "checkmark.square"
        return HStack {
            TodoEntryButton(iconSystemName: iconName, buttonAction: onChangeCompletionStatus)
            Text(todo.text)
            Spacer()
            TodoEntryButton(iconSystemName: "trash", buttonAction: onRemove)
        }
    }
}

struct TodoEntryView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            TodosEntryView(todo: Todo(id: 0, text: "Great job!"))
            TodosEntryView(todo: Todo(id: 0, text: "Great job!"))
            TodosEntryView(todo: Todo(id: 0, text: "Great job!"))
        }
    }
}
