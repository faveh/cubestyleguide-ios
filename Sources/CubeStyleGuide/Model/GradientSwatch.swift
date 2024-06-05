//
//  GradientSwatch.swift
//  
//
//  Created by Ayodimeji Adejuwon on 05/06/2024.
//

import SwiftUI

public struct GradientSwatch: Hashable {

    var name: String
    var gradients: [SwatchGradient]

    public init(
        name: String,
        gradients: [SwatchGradient]
    ) {
        self.name = name
        self.gradients = gradients
    }
}

public struct SwatchGradient: Hashable {

    var name: String
    var colors: [Color]
    var colorsNames: String

    public init(
        name: String,
        colorsNames: String,
        colors: [Color]
    ) {
        self.name = name
        self.colorsNames = colorsNames
        self.colors = colors
    }

    public var gradient: LinearGradient {
        return LinearGradient(gradient: Gradient(colors: colors), startPoint: .leading, endPoint: .trailing)
    }
}

