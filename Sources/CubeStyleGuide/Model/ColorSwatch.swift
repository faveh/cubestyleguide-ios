//
//  ColorSwatch.swift
//  CubeStyleGuide
//
//  Created by Sam Davis on 01/08/2022.
//  Copyright © 2022 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

import SwiftUI

public struct ColorSwatch: Hashable {
    var name: String
    var colors: [SwatchColor]
}

public struct SwatchColor: Hashable {
    var name: String
    var color: Color
    var highlighted = false
    var outlined = false
}
