//
//  NamedShadow.swift
//  CubeStyleGuide
//
//  Created by Sam Davis on 23/01/2023.
//  Copyright © 2023 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

import Foundation
import CubeFoundationSwiftUI

public struct NamedShadow: Hashable {

    var name: String
    var shadow: FigmaShadow

    public init(
        name: String,
        shadow: FigmaShadow
    ) {
        self.name = name
        self.shadow = shadow
    }
}

public struct NamedShadows: Hashable {

    var name: String
    var shadows: [FigmaShadow]

    public init(
        name: String,
        shadows: [FigmaShadow]
    ) {
        self.name = name
        self.shadows = shadows
    }
}

