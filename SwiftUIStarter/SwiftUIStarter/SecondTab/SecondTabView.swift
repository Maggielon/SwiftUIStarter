//
//  SecondTabView.swift
//  SwiftUIStarter
//
//  Created by Анастасия on 28.08.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

import SwiftUI

struct SecondTabView: View {
    
    @ObservedObject var viewModel = SecondTabViewModel()
    
    @Binding var randomSelectedIndex: Int?
    
    var body: some View {
        NavigationView {
            List(self.viewModel.items) { item in
                NavigationLink(destination: SecondTabRowView(title: item.title), tag: self.viewModel.index(for: item), selection: self.$randomSelectedIndex) {
                    Text(item.title)
                        .foregroundColor(.black)
                }
            }.navigationBarTitle("List")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct SecondTabView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabView(randomSelectedIndex: .constant(nil))
    }
}
