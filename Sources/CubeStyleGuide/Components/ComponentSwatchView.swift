//
//  TextStyleSwatchView.swift
//  CubeStyleGuide
//
//  Created by Sam Davis on 02/08/2022.
//  Copyright © 2022 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

import SwiftUI

public struct ComponentSwatchView: View {

    var swatch: ComponentSwatch
    var theme: StyleGuideTheme

    public init(swatch: ComponentSwatch, theme: StyleGuideTheme) {
        self.swatch = swatch
        self.theme = theme
    }

    public var body: some View {
        VStack(spacing: .sectionSpacing) {
            if !swatch.name.isEmpty {
                StyleGuideSubheadingView(text: swatch.name, theme: theme)
            }

            ForEach(swatch.components) { component in
                VStack(spacing: 8) {
                    if !component.name.isEmpty {
                        Text(component.name)
                            .style(theme.primaryTextStyle)
                    }
                    component.component
                }
            }
            .foregroundColor(theme.primaryColor)
            .padding(.horizontal, .margin)
        }
    }
}

struct ComponentSwatchView_Previews: PreviewProvider {
    static var previews: some View {
        ComponentSwatchView(
            swatch: ComponentSwatch(
                name: "Primary",
                components: [
                    SwatchComponent(
                        name: "Active",
                        component: {
                            Color.red
                                .frame(height: 44)
                        }
                    ),
                    SwatchComponent(
                        name: "Inactive",
                        component: {
                            Color.gray
                                .frame(height: 44)
                        }
                    )
                ]
            ),
            theme: .default
        )
    }
}
