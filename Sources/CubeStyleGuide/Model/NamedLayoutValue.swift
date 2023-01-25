//
//  NamedLayoutValue.swift
//  CubeStyleGuide
//
//  Created by Sam Davis on 23/01/2023.
//  Copyright © 2023 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

import Foundation

public struct NamedLayoutValue: Hashable {

    var name: String
    var value: CGFloat

    public init(
        name: String, 
        value: CGFloat
    ) {
        self.name = name
        self.value = value
    }
}
