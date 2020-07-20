//
//  ComposerView.swift
//  TodoApp
//
//  Created by Przemek Smyrdek on 20/07/2020.
//  Copyright © 2020 Przemek Smyrdek. All rights reserved.
//

import SwiftUI

struct ComposerView: View {
    
    @State var todo: String = ""
    
    let onTodoComposed: (String) -> Void
    
    func onComposed() {
        onTodoComposed(todo)
        todo = ""
    }
    
    var body : some View {
        HStack {
            TextField("What's up for today?", text: $todo)
            Button(action: onComposed) {
                Image(systemName: "plus")
                    .padding(10)
                    .imageScale(.medium)
            }
            .padding(.vertical, 5)
            .padding(.horizontal, 15)
            .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .leading, endPoint: .trailing))
            .foregroundColor(.white)
            .cornerRadius(10)
            
        }
    }
}

struct ComposerView_Previews: PreviewProvider {
    static var previews: some View {
        ComposerView(onTodoComposed: {todo in print(todo)})
    }
}
