//
//  SecondTabRowView.swift
//  SwiftUIStarter
//
//  Created by Анастасия on 28.08.2020.
//  Copyright © 2020 Анастасия. All rights reserved.
//

import SwiftUI

struct SecondTabRowView: View {
    
    var title: String
    
    var body: some View {
        Text(title)
    }
}

struct SecondTabRowView_Previews: PreviewProvider {
    static var previews: some View {
        SecondTabRowView(title: "Title")
    }
}
