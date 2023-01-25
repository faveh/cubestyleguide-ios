//
//  ComponentSwatch.swift
//  CubeStyleGuide
//
//  Created by Sam Davis on 18/01/2023.
//  Copyright © 2023 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

import SwiftUI

public struct ComponentSwatch {

    var name: String
    var components: [SwatchComponent]

    public init(
        name: String,
        components: [SwatchComponent]
    ) {
        self.name = name
        self.components = components
    }
}

public struct SwatchComponent {

    var name: String
    var component: AnyView

    public init(
        name: String,
        @ViewBuilder component: @escaping () -> some View
    ) {
        self.name = name
        self.component = AnyView(component())
    }
}
