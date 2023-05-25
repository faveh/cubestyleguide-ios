//
//  ComponentSwatch.swift
//  CubeStyleGuide
//
//  Created by Sam Davis on 18/01/2023.
//  Copyright © 2023 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

import SwiftUI

public struct ComponentSwatch: Identifiable {

    public var id: UUID
    var name: String
    var components: [SwatchComponent]

    public init(
        name: String,
        components: [SwatchComponent]
    ) {
        self.id = UUID()
        self.name = name
        self.components = components
    }
}

public struct SwatchComponent: Identifiable {

    public var id: UUID
    var name: String
    var component: AnyView

    public init<Content: View>(
        name: String,
        @ViewBuilder component: @escaping () -> Content
    ) {
        self.id = UUID()
        self.name = name
        self.component = AnyView(component())
    }
}
