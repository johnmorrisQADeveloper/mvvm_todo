//
//  ListViewModel.swift
//  TodoList
//
//  Created by John Morris on 25/04/2021.
//

import Foundation
// CRUD
class ListViewModel : ObservableObject {
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "This is the first title!", isCompleted: false),
            ItemModel(title: "This is the second title!", isCompleted: true),
            ItemModel(title: "Third!", isCompleted: false)
        ]
        items.append(contentsOf: newItems)
    }
    
    func deleteItem(indexSet: IndexSet) -> Void {
        items.remove(atOffsets: indexSet)
    }
    func moveItem(from: IndexSet, to: Int) -> Void {
        items.move(fromOffsets: from, toOffset: to)
    }
    func addItem(title: String)  {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    func updateItem(item: ItemModel)  {
        if let index = items.firstIndex(where: {$0.id == item.id}) {
            items[index] = item.updateCompletion()
        }
    }
}
