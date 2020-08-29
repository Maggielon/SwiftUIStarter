//
//  ModalView.swift
//  SwiftUIStarter
//
//  Created by Анастасия on 28.08.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

import SwiftUI

struct ModalView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            Text("I'm a modal")
            Button(action: {
                self.presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Close me")
            })
        }
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        ModalView()
    }
}
