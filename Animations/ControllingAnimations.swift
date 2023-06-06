//
//  ControllingAnimations.swift
//  Animations
//
//  Created by Fauzan Dwi Prasetyo on 05/06/23.
//

import SwiftUI

struct ControllingAnimationsView: View {
    @State private var enabled = false
    
    var body: some View {
        Button("Tap Me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? .blue : .red)
        .animation(nil, value: enabled)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 20, damping: 1), value: enabled)
    }
}

struct ControllingAnimationsView_Previews: PreviewProvider {
    static var previews: some View {
        ControllingAnimationsView()
    }
}
