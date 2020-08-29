//
//  SecondTabViewModel.swift
//  SwiftUIStarter
//
//  Created by Анастасия on 28.08.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

import SwiftUI

class SecondTabViewModel: ObservableObject {
    
    @Published var items: [Item] = [
        Item("First"),
        Item("Second"),
        Item("Third"),
        Item("Forth"),
        Item("Fifth")
    ]
}

class Item {
    var title: String
    
    init(_ title: String) {
        self.title = title
    }
}

extension Item: Equatable {
    
    static func == (lhs: Item, rhs: Item) -> Bool {
        return lhs.title == rhs.title
    }
}

extension Item: Identifiable { }
