//
//  SelectSomethingView.swift
//  ToDoList
//
//  Created by Julia Gurbanova on 26.08.2023.
//

import SwiftUI

struct SelectSomethingView: View {
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "checkmark.square")
                .font(.largeTitle)
                .foregroundColor(.accentColor)
            
            Text("Welcome to ToDoList!")
                .font(.title)
            
            Text("Please, select an item to view.")
        }
    }
}

struct SelectSomethingView_Previews: PreviewProvider {
    static var previews: some View {
        SelectSomethingView()
    }
}
