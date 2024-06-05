//
//  GradientSwatchView.swift
//
//
//  Created by Ayodimeji Adejuwon on 05/06/2024.
//

import SwiftUI

public struct GradientSwatchView: View {
    var swatch: GradientSwatch
    var style: ColorSwatchStyle
    var theme: StyleGuideTheme

    public init(
        swatch: GradientSwatch,
        style: ColorSwatchStyle = .primary,
        theme: StyleGuideTheme
    ) {
        self.swatch = swatch
        self.style = style
        self.theme = theme
    }

    public var body: some View {
        HStack(spacing: 0) {
            ForEach(swatch.gradients, id: \.self) { gradient in
                SwatchSingleGradientView(
                    swatchName: swatch.name,
                    gradient: gradient,
                    style: style,
                    theme: theme
                )
            }
        }
    }
}

fileprivate struct SwatchSingleGradientView: View {

    var swatchName: String
    var gradient: SwatchGradient
    var style: ColorSwatchStyle
    var theme: StyleGuideTheme

    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Text(gradient.colorsNames)
                .style(theme.primaryTextStyle)
                .padding(5)
                .background(Color.clear)
            gradient.gradient
                .frame(height: 45)
            Text(gradient.name)
                .style(theme.primaryTextStyle)
                .padding(5)
        }
        .foregroundColor(theme.primaryColor)
    }
}
