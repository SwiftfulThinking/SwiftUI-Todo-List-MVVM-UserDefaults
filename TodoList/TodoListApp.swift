//
//  TodoListApp.swift
//  TodoList
//
//  Created by Nick Sarno on 3/2/21.
//

import SwiftUI

/*
 MVVM Architecture
 
 Model - manages single data point
 View - manages the UI
 ViewModel - manages data (models) for views
 */

@main
struct TodoListApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .environmentObject(listViewModel)
        }
    }
}
