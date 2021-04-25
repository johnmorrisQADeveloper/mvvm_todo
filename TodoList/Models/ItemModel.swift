//
//  ItemModel.swift
//  TodoList
//
//  Created by John Morris on 25/04/2021.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
