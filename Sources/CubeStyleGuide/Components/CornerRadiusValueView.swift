//
//  CornerRadiusValueView.swift
//
//
//  Created by Ayodimeji Adejuwon on 05/06/2024.
//

import SwiftUI

public struct CornerRadiusValueView: View {

    var layoutValue: NamedLayoutValue
    var theme: StyleGuideTheme

    public init(layoutValue: NamedLayoutValue, theme: StyleGuideTheme) {
        self.layoutValue = layoutValue
        self.theme = theme
    }

    public var body: some View {
        ZStack {
            Color.white
                .border(theme.secondaryColor, width: 1)
                .frame(height: 120)
            VStack(spacing: 10) {
                Text(layoutValue.name)
                    .style(theme.primaryTextStyle)
                theme.accentColor
                    .frame(size: 60)
                    .clipShape(.rect(cornerRadius: layoutValue.value))
                Text(verbatim: "\(Int(layoutValue.value))pt") // TODO: NumberFormatter?
                    .style(theme.primaryTextStyle)
            }
            .foregroundColor(theme.primaryColor)
        }
    }
}
