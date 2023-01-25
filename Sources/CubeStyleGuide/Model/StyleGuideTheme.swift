//
//  StyleGuideTheme.swift
//  CubeStyleGuide
//
//  Created by Sam Davis on 17/01/2023.
//  Copyright © 2023 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

import SwiftUI
import CubeFoundationSwiftUI

public struct StyleGuideTheme {

    var primaryTextStyle: TextStyle
    var secondaryTextStyle: TextStyle
    var backgroundColor: Color
    var primaryColor: Color
    var secondaryColor: Color
    var accentColor: Color

    public init(
        primaryTextStyle: TextStyle,
        secondaryTextStyle: TextStyle,
        backgroundColor: Color,
        primaryColor: Color,
        secondaryColor: Color,
        accentColor: Color
    ) {
        self.primaryTextStyle = primaryTextStyle
        self.secondaryTextStyle = secondaryTextStyle
        self.backgroundColor = backgroundColor
        self.primaryColor = primaryColor
        self.secondaryColor = secondaryColor
        self.accentColor = accentColor
    }
}

extension StyleGuideTheme {

    static let `default` = StyleGuideTheme(
        primaryTextStyle: TextStyle(font: .helveticaNeue, weight: 800, size: 10, lineHeight: 10),
        secondaryTextStyle: TextStyle(font: .helveticaNeue, weight: 700, size: 12, lineHeight: 10),
        backgroundColor: Color(.sRGB, red: 1.0, green: 1.0, blue: 1.0),
        primaryColor: Color(.sRGB, red: 0.2, green: 0.2, blue: 0.2),
        secondaryColor: Color(.sRGB, red: 0.96, green: 0.96, blue: 0.96),
        accentColor: Color(.sRGB, red: 1.0, green: 0.86, blue: 0.86)
    )
}
