//
//  StyleGuideContent.swift
//  CubeStyleGuide
//
//  Created by Sam Davis on 18/01/2023.
//  Copyright © 2023 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

import Foundation
import CubeFoundationSwiftUI
import SwiftUI

public struct StyleGuideContent {

    var primaryColorSwatches: [ColorSwatch]
    var secondaryColorSwatches: [ColorSwatch]
    var shadows: [NamedShadow]
    var textStyleSwatches: [TextStyleSwatch]
    var componentSwatches: [ComponentSwatch]
    var layoutValues: [NamedLayoutValue]
    var marginLayoutValues: [NamedLayoutValue]

    public init(
        primaryColorSwatches: [ColorSwatch],
        secondaryColorSwatches: [ColorSwatch],
        shadows: [NamedShadow],
        textStyleSwatches: [TextStyleSwatch],
        componentSwatches: [ComponentSwatch],
        layoutValues: [NamedLayoutValue],
        marginLayoutValues: [NamedLayoutValue]
    ) {
        self.primaryColorSwatches = primaryColorSwatches
        self.secondaryColorSwatches = secondaryColorSwatches
        self.shadows = shadows
        self.textStyleSwatches = textStyleSwatches
        self.componentSwatches = componentSwatches
        self.layoutValues = layoutValues
        self.marginLayoutValues = marginLayoutValues
    }
}

internal extension StyleGuideContent {

    static let demo = StyleGuideContent(
        primaryColorSwatches: [
            ColorSwatch(
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
            ColorSwatch(
                name: "Water",
                colors: [
                    SwatchColor(name: "Mint", color: .mint),
                    SwatchColor(name: "Cyan", color: .cyan),
                    SwatchColor(name: "Blue", color: .blue, highlighted: true),
                    SwatchColor(name: "Indigo", color: .indigo),
                    SwatchColor(name: "Teal", color: .teal)
                ]
            )
        ],
        secondaryColorSwatches: [
            ColorSwatch(
                name: "Fire",
                colors: [
                    SwatchColor(name: "Red", color: .red),
                    SwatchColor(name: "Orange", color: .orange),
                ]
            ),
            ColorSwatch(
                name: "Black and grey",
                colors: [
                    SwatchColor(name: "Black", color: .black),
                    SwatchColor(name: "Grey", color: .gray),
                ]
            )
        ],
        shadows: [
            NamedShadow(
                name: "Strong",
                shadow: FigmaShadow(
                    x: 0,
                    y: 2,
                    blur: 10,
                    color: Color(.sRGB, red: 0.1, green: 0.1, blue: 0.1, opacity: 0.24)
                )
            )
        ],
        textStyleSwatches: [
            TextStyleSwatch(
                name: "Heading",
                textStyles: [
                    SwatchTextStyle(
                        name: "Heading 1000",
                        textStyle: TextStyle(
                            font: .helveticaNeue,
                            weight: .black,
                            size: 40,
                            lineHeight: 20
                        )
                    ),
                    SwatchTextStyle(
                        name: "Heading 500",
                        textStyle: TextStyle(
                            font: .helveticaNeue,
                            weight: .black,
                            size: 30,
                            lineHeight: 20
                        )
                    )
                ]
            ),
            TextStyleSwatch(
                name: "Heading",
                textStyles: [
                    SwatchTextStyle(
                        name: "Heading 1000",
                        textStyle: TextStyle(
                            font: .helveticaNeue,
                            weight: .black,
                            size: 20,
                            lineHeight: 20
                        )
                    ),
                    SwatchTextStyle(
                        name: "Heading 500",
                        textStyle: TextStyle(
                            font: .helveticaNeue,
                            weight: .black,
                            size: 10,
                            lineHeight: 20
                        )
                    )
                ]
            )
        ],
        componentSwatches: [
            ComponentSwatch(
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
            ComponentSwatch(
                name: "Secondary",
                components: [
                    SwatchComponent(
                        name: "Active",
                        component: {
                            Color.blue
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
            )
        ],
        layoutValues: [
            NamedLayoutValue(name: "100", value: 4),
            NamedLayoutValue(name: "200", value: 8),
            NamedLayoutValue(name: "300", value: 12),
            NamedLayoutValue(name: "400", value: 16),
            NamedLayoutValue(name: "500", value: 24),
            NamedLayoutValue(name: "600", value: 32),
            NamedLayoutValue(name: "700", value: 44),
            NamedLayoutValue(name: "800", value: 60)
        ],
        marginLayoutValues: [
            NamedLayoutValue(name: "Object Margin", value: 24),
            NamedLayoutValue(name: "Text Margin", value: 20)
        ]
    )
}
