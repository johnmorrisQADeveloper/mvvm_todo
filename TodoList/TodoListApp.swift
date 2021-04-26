//
//  TodoListApp.swift
//  TodoList
//
//  Created by John Morris on 25/04/2021.
//

import SwiftUI
/*
 MVVM Arch
 Model      - data point
 View       - UI
 ViewModel  - manages Models for View
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
