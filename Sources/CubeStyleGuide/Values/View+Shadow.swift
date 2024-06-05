//
//  View+Shadow.swift
//
//
//  Created by Ayodimeji Adejuwon on 05/06/2024.
//

import SwiftUI
import CubeFoundationSwiftUI

extension View {
    func multipleShadows(_ shadows: [FigmaShadow]) -> some View {
        var view: AnyView = AnyView(self)
        for shadow in shadows {
            view = view.shadow(
                color: shadow.color,
                radius: shadow.blur / 2.0,
                x: shadow.x,
                y: shadow.y
            ).eraseToAnyView()
        }
        return view
    }

    func eraseToAnyView() -> AnyView {
        AnyView(self)
    }
}
