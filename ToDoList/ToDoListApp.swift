//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Julia Gurbanova on 26.08.2023.
//

import SwiftUI

@main
struct ToDoListApp: App {
    @StateObject private var model = ViewModel()
    @Environment(\.scenePhase) var scenePhase
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(model: model)
                SelectSomethingView()
            }
        }
        .onChange(of: scenePhase) { phase in
            if phase == .background {
                model.save()
            }
        }
    }
}
