//
//  ControlImageView.swift
//  Pinch
//
//  Created by Mustafa TAVASLI on 3.02.2024.
//

import SwiftUI

struct ControlImageView: View {
    // SF Symbol Uzantilari
    let icon : String
    
    var body: some View {
        Image(systemName: icon)
            .font(.system(size: 36))
    }
}

#Preview {
    ControlImageView(icon: "minus.magnifyingglass")
        .preferredColorScheme(.dark)
        .previewLayout(.sizeThatFits)
        .padding()
}
