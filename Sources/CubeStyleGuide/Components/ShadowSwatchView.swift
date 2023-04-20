//
//  ShadowSwatchView.swift
//  CubeStyleGuide
//
//  Created by Sam Davis on 01/08/2022.
//  Copyright © 2022 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

import SwiftUI
import CubeFoundationSwiftUI

public struct ShadowSwatchView: View {

    var shadow: NamedShadow
    var theme: StyleGuideTheme

    public var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(verbatim: "\(String.shadow) - \(shadow.name)")
                .style(theme.primaryTextStyle)
                .padding(5)
                .background(theme.primaryColor)
                .foregroundColor(.white)
            Color.white
                .frame(height: 45)
                .shadow(shadow.shadow)
        }
    }
}

struct ShadowSwatchView_Previews: PreviewProvider {
    static var previews: some View {
        ShadowSwatchView(
            shadow: NamedShadow(
                name: "Strong",
                shadow: FigmaShadow(
                    x: 0,
                    y: 2,
                    blur: 10,
                    color: Color(.sRGB, red: 0.1, green: 0.1, blue: 0.1, opacity: 0.24)
                )
            ),
            theme: .default
        )
        .padding(.margin)
    }
}
