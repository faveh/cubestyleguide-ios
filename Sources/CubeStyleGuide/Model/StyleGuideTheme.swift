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

    public var primaryTextStyle: TextStyle
    public var secondaryTextStyle: TextStyle
    public var backgroundColor: Color
    public var primaryColor: Color
    public var secondaryColor: Color
    public var accentColor: Color

    public init(
        primaryTextStyle: TextStyle = Self.default.primaryTextStyle,
        secondaryTextStyle: TextStyle = Self.default.secondaryTextStyle,
        backgroundColor: Color = Self.default.backgroundColor,
        primaryColor: Color = Self.default.primaryColor,
        secondaryColor: Color = Self.default.secondaryColor,
        accentColor: Color = Self.default.accentColor
    ) {
        self.primaryTextStyle = primaryTextStyle
        self.secondaryTextStyle = secondaryTextStyle
        self.backgroundColor = backgroundColor
        self.primaryColor = primaryColor
        self.secondaryColor = secondaryColor
        self.accentColor = accentColor
    }
}

public extension StyleGuideTheme {

    static let `default` = StyleGuideTheme(
        primaryTextStyle: .primary,
        secondaryTextStyle: .secondary,
        backgroundColor: .background,
        primaryColor: .primary,
        secondaryColor: .secondary,
        accentColor: .accent
    )
}
