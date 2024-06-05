//
//  ColorSwatchView.swift
//  CubeStyleGuide
//
//  Created by Sam Davis on 01/08/2022.
//  Copyright © 2022 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

import SwiftUI
import CubeFoundationSwiftUI

public enum ColorSwatchStyle {
    case primary
    case secondary
    case none
}
public struct ColorSwatchView: View {
    var swatch: ColorSwatch
    var style: ColorSwatchStyle
    var theme: StyleGuideTheme

    public init(
        swatch: ColorSwatch,
        style: ColorSwatchStyle = .primary,
        theme: StyleGuideTheme
    ) {
        self.swatch = swatch
        self.style = style
        self.theme = theme
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
    var style: ColorSwatchStyle
    var theme: StyleGuideTheme

    var label: String {
        var text = color.highlighted ? swatchName : .variant
        if style == .secondary {
            text.append(" - \(color.name)")
        } else if style == .none {
            text = color.color.hexString(opacity: false)
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
        VStack(alignment: style != .secondary ? .center : .leading, spacing: 0) {
            Text(label)
                .style(theme.primaryTextStyle)
                .padding(style == .none ? 1 : 5)
                .background(style == .secondary ? theme.primaryColor : Color.clear)
            color.color
                .frame(height: 45)
                .border(.black, width: color.outlined ? 1 : 0)
            if style != .secondary {
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
                    SwatchColor(name: "Violet", color: .purple, outlined: true)
                ]
            ),
            theme: .default
        )
        .padding(20)
    }
}
