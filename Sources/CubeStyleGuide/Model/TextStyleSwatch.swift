//
//  TextStyleSwatch.swift
//  CubeStyleGuide
//
//  Created by Sam Davis on 23/01/2023.
//  Copyright © 2023 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

import Foundation
import CubeFoundationSwiftUI

public struct TextStyleSwatch: Hashable {

    var name: String
    var textStyles: [SwatchTextStyle]

    public init(
        name: String = "",
        textStyles: [SwatchTextStyle]
    ) {
        self.name = name
        self.textStyles = textStyles
    }
}

public struct SwatchTextStyle: Hashable {

    var name: String
    var textStyle: TextStyle

    public init(
        name: String,
        textStyle: TextStyle
    ) {
        self.name = name
        self.textStyle = textStyle
    }
}
