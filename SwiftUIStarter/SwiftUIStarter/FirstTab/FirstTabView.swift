//
//  FirstTabView.swift
//  SwiftUIStarter
//
//  Created by Анастасия on 28.08.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

import SwiftUI

struct FirstTabView: View {
    
    @Binding var selection: Int
    @Binding var randomSelectedIndex: Int?
    
    var body: some View {
        VStack {
            Text("Home screen")
            Button(action: {
                self.selection = 1
                self.randomSelectedIndex = Int.random(in: 0..<5)
            }) {
                Text("Show second")
            }
        }
    }
}

struct FirstTabView_Previews: PreviewProvider {
    static var previews: some View {
        FirstTabView(selection: .constant(1), randomSelectedIndex: .constant(nil))
    }
}
