//
//  TextStyleSwatchView.swift
//  CubeStyleGuide
//
//  Created by Sam Davis on 02/08/2022.
//  Copyright © 2022 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

import SwiftUI
import CubeFoundationSwiftUI

public struct TextStyleSwatchView: View {

    var swatch: TextStyleSwatch
    var theme: StyleGuideTheme

    public var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            StyleGuideSubheadingView(text: swatch.name, theme: theme)
            VStack(alignment: .leading, spacing: 16) {
                ForEach(swatch.textStyles, id: \.self) { style in
                    Text(style.name)
                        .style(style.textStyle)
                        .foregroundColor(style.color ?? theme.primaryColor)
                }
            }
            .padding(.horizontal, .margin)
        }
    }
}

fileprivate struct TextStyleView_Previews: PreviewProvider {
    static var previews: some View {
        TextStyleSwatchView(
            swatch: TextStyleSwatch(
                name: "Bold Heading",
                textStyles: [
                    SwatchTextStyle(
                        name: "Heading 1000",
                        textStyle: TextStyle(
                            font: .helveticaNeue,
                            weight: .black,
                            size: 22,
                            lineHeight: 20
                        )
                    )
                ]
            ),
            theme: .default
        )
    }
}
