//
//  LayoutValueView.swift
//  CubeStyleGuide
//
//  Created by Sam Davis on 02/08/2022.
//  Copyright © 2022 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

import SwiftUI
import CubeFoundationSwiftUI

public struct LayoutValueView: View {

    var layoutValue: NamedLayoutValue
    var theme: StyleGuideTheme

    public var body: some View {
        ZStack {
            Color.white
                .border(theme.secondaryColor, width: 1)
                .frame(height: 120)
            VStack(spacing: 10) {
                Text(layoutValue.name)
                    .style(theme.primaryTextStyle)
                theme.accentColor
                    .frame(size: layoutValue.value)
                Text(verbatim: "\(Int(layoutValue.value))pt") // TODO: NumberFormatter?
                    .style(theme.primaryTextStyle)
            }
            .foregroundColor(theme.primaryColor)
        }
    }
}

fileprivate struct LayoutValueView_Previews: PreviewProvider {
    static var previews: some View {
        LayoutValueView(layoutValue: NamedLayoutValue(name: "400", value: 16), theme: .default)
            .frame(width: 75)
            .padding()
    }
}
