//
//  TodoEntryButton.swift
//  TodoApp
//
//  Created by Przemek Smyrdek on 20/07/2020.
//  Copyright © 2020 Przemek Smyrdek. All rights reserved.
//

import SwiftUI

struct TodoEntryButton: View {
    
    var iconSystemName: String
    var buttonAction: () -> Void
    
    var body: some View {
        Button(action: buttonAction) {
            Image(systemName: iconSystemName)
                .padding(.vertical, 5)
                .padding(.trailing, 5)
                .imageScale(.medium)
        }
    }
}

struct TodoEntryButton_Previews: PreviewProvider {
    static var previews: some View {
        TodoEntryButton(iconSystemName: "trash") {
            
        }
    }
}
