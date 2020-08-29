//
//  TabScreenView.swift
//  SwiftUIStarter
//
//  Created by Анастасия on 28.08.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

import SwiftUI

struct TabScreenView: View {
    
    @State var showModal = false
    
    @State private var selection = 0
    //@State private var openRandomRowInList: Bool = false
    @State private var randomSelectedIndex: Int?
    
    var body: some View {
        TabView(selection: $selection) {
            FirstTabView(selection: $selection, randomSelectedIndex: $randomSelectedIndex)
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("Home")
                    }
                    
            }
            .tag(0)
            SecondTabView(randomSelectedIndex: $randomSelectedIndex)
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                    
            }
            .tag(1)
            VStack {
                Text("Info")
                Button(action: {
                    self.showModal = true
                }) {
                    Text("Show Modal")
                }.sheet(isPresented: $showModal) {
                    VStack {
                        ModalView()
                    }
                }
            }
            .font(.title)
            .tabItem {
                VStack {
                    Image(systemName: "info.circle")
                    Text("About")
                }
                
            }
            .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TabScreenView()
    }
}
