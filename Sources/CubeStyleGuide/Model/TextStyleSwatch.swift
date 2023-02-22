//
//  TextStyleSwatch.swift
//  CubeStyleGuide
//
//  Created by Sam Davis on 23/01/2023.
//  Copyright © 2023 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

import SwiftUI
import CubeFoundationSwiftUI

public struct TextStyleSwatch: Hashable {

    var name: String
    var textStyles: [SwatchTextStyle]

    public init(
        name: String,
        textStyles: [SwatchTextStyle]
    ) {
        self.name = name
        self.textStyles = textStyles
    }
}

public struct SwatchTextStyle: Hashable {

    var name: String
    var textStyle: TextStyle
    var color: Color?

    public init(
        name: String,
        textStyle: TextStyle,
        color: Color? = nil
    ) {
        self.name = name
        self.textStyle = textStyle
        self.color = color
    }
}
