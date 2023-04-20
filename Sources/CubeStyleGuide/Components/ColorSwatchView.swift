//
//  ColorSwatchView.swift
//  CubeStyleGuide
//
//  Created by Sam Davis on 01/08/2022.
//  Copyright © 2022 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

import SwiftUI
import CubeFoundationSwiftUI

public struct ColorSwatchView: View {

    var swatch: ColorSwatch
    var style: ColorSwatchStyle = .primary
    var theme: StyleGuideTheme

    enum ColorSwatchStyle {
        case primary
        case secondary
    }

    public var body: some View {
        SingleAxisGeometryReader { width in
            HStack(spacing: 0) {
                ForEach(swatch.colors, id: \.self) { color in
                    SwatchSingleColorView(
                        swatchName: swatch.name,
                        color: color,
                        style: style,
                        theme: theme
                    )
                    .if(color.highlighted && style == .primary, transform: {
                        $0.frame(width: width / CGFloat(swatch.colors.count) * 1.28)
                    })
                }
            }
        }
    }
}

fileprivate struct SwatchSingleColorView: View {

    var swatchName: String
    var color: SwatchColor
    var style: ColorSwatchView.ColorSwatchStyle
    var theme: StyleGuideTheme

    var label: String {
        var text = color.highlighted ? swatchName : .variant
        if style == .secondary {
            text.append(" - \(color.name)")
        }
        return text
    }

    var textColor: Color {
        if color.highlighted || style == .secondary {
            return .white
        } else {
            return theme.primaryColor
        }
    }

    var backgroundColor: Color {
        if style == .primary && color.highlighted {
            return theme.primaryColor
        } else {
            return .clear
        }
    }

    var body: some View {
        VStack(alignment: style == .primary ? .center : .leading, spacing: 0) {
            Text(label)
                .style(theme.primaryTextStyle)
                .padding(5)
                .background(style == .secondary ? theme.primaryColor : Color.clear)
            color.color
                .frame(height: 45)
            if style == .primary {
                Text(color.name)
                    .style(theme.primaryTextStyle)
                    .padding(5)
            }
        }
        .foregroundColor(textColor)
        .background(backgroundColor)
    }
}

struct ColorSwatchView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSwatchView(
            swatch: ColorSwatch(
                name: "Rainbow",
                colors: [
                    SwatchColor(name: "Red", color: .red),
                    SwatchColor(name: "Orange", color: .orange),
                    SwatchColor(name: "Yellow", color: .yellow),
                    SwatchColor(name: "Green", color: .green, highlighted: true),
                    SwatchColor(name: "Blue", color: .blue),
                    SwatchColor(name: "Indigo", color: .indigo),
                    SwatchColor(name: "Violet", color: .purple)
                ]
            ),
            theme: .default
        )
        .padding(20)
    }
}
