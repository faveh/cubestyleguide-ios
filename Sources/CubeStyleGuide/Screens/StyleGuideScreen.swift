//
//  StyleGuideScreen.swift
//  CubeStyleGuide
//
//  Created by Sam Davis on 01/08/2022.
//  Copyright © 2022 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

import SwiftUI
import CubeFoundationSwiftUI

public struct StyleGuideScreen: View {

    var content: StyleGuideContent
    var theme: StyleGuideTheme

    public init(
        content: StyleGuideContent,
        theme: StyleGuideTheme = .default
    ) {
        self.content = content
        self.theme = theme
    }

    // MARK: Colors & Shadows

    @ViewBuilder
    private func colorsAndShadowsSection() -> some View {
        StyleGuideHeadingView(text: .colorsAndShadows, theme: theme)

        ForEach(content.primaryColorSwatches, id: \.self) { swatch in
            ColorSwatchView(swatch: swatch, theme: theme)
                .padding(.horizontal, .margin)
            Divider()
        }

        ForEach(content.secondaryColorSwatches, id: \.self) { swatch in
            ColorSwatchView(swatch: swatch, style: .secondary, theme: theme)
                .padding(.horizontal, .margin)
        }

        Divider()

        ForEach(content.shadows, id: \.self) { shadow in
            ShadowSwatchView(shadow: shadow, theme: theme)
                .padding(.horizontal, .margin)
        }
    }

    // MARK: Text Styles

    @ViewBuilder
    private func textStylesSection() -> some View {
        StyleGuideHeadingView(text: .textStyles, theme: theme)

        ForEach(content.textStyleSwatches, id: \.self) { swatch in
            TextStyleSwatchView(swatch: swatch, theme: theme)
        }
    }

    // MARK: Components

    @ViewBuilder
    private func componentsSection() -> some View {
        StyleGuideHeadingView(text: .components, theme: theme)

        ForEach(content.componentSwatches, id: \.name) { swatch in
            ComponentSwatchView(swatch: swatch, theme: theme)
        }
    }

    // MARK: Layout

    private let columns = [GridItem](repeating: GridItem(.flexible()), count: 4)

    @ViewBuilder
    private func layoutSection() -> some View {
        StyleGuideHeadingView(text: .layout, theme: theme)

        LazyVGrid(columns: columns, spacing: 10) {
            ForEach(content.layoutValues, id: \.self) { layoutValue in
                LayoutValueView(layoutValue: layoutValue, theme: theme)
            }
        }
        .padding(.horizontal, .margin)

        ForEach(content.marginLayoutValues, id: \.self) { layoutValue in
            MarginLayoutValueView(layoutValue: layoutValue, theme: theme)
        }
    }

    // MARK: Body

    public var body: some View {
        ScrollView {
            LazyVStack(spacing: .sectionSpacing) {
                colorsAndShadowsSection()
                textStylesSection()
                componentsSection()
                layoutSection()
            }
        }
    }
}

struct UIStyleGuide_Previews: PreviewProvider {
    static var previews: some View {
        StyleGuideScreen(content: .demo)
    }
}
