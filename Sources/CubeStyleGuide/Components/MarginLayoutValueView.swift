//
//  MarginLayoutValueView.swift
//  CubeStyleGuide
//
//  Created by Sam Davis on 18/01/2023.
//  Copyright © 2023 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

import SwiftUI

public struct MarginLayoutValueView: View {

    var layoutValue: NamedLayoutValue
    var theme: StyleGuideTheme

    public init(layoutValue: NamedLayoutValue, theme: StyleGuideTheme) {
        self.layoutValue = layoutValue
        self.theme = theme
    }

    public var body: some View {
        HStack(spacing: 10) {
            theme.accentColor
                .frame(width: layoutValue.value, height: 205)
            VStack(alignment: .trailing) {
                Text(layoutValue.name)
                    .style(theme.primaryTextStyle)
                Text(verbatim: "\(Int(layoutValue.value))px") // TODO: NumberFormatter?
                    .style(theme.primaryTextStyle)
            }
            Spacer()
            VStack(alignment: .leading) {
                Text(layoutValue.name)
                    .style(theme.primaryTextStyle)
                Text(verbatim: "\(Int(layoutValue.value))px") // TODO: NumberFormatter?
                    .style(theme.primaryTextStyle)
            }
            theme.accentColor
                .frame(width: layoutValue.value, height: 205)
        }
        .foregroundColor(theme.primaryColor)
    }
}

struct MarginLayoutValueView_Previews: PreviewProvider {
    static var previews: some View {
        MarginLayoutValueView(
            layoutValue: NamedLayoutValue(
                name: "Object Margin",
                value: 24
            ),
            theme: .default
        )
    }
}


public struct EndScrollLayoutValueView: View {

    var layoutValue: NamedLayoutValue
    var theme: StyleGuideTheme

    public init(layoutValue: NamedLayoutValue, theme: StyleGuideTheme) {
        self.layoutValue = layoutValue
        self.theme = theme
    }

    public var body: some View {
        VStack {
            VStack(alignment: .center) {
                Spacer()
                Text(layoutValue.name)
                    .style(theme.primaryTextStyle)
                Text(verbatim: "\(Int(layoutValue.value))px")
                    .style(theme.primaryTextStyle)
            }
            theme.accentColor
                .frame(height: layoutValue.value)
        }
        .foregroundColor(theme.primaryColor)
    }
}
