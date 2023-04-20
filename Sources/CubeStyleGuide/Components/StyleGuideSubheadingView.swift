//
//  StyleGuideSubheadingView.swift
//  CubeStyleGuide
//
//  Created by Sam Davis on 02/08/2022.
//  Copyright © 2022 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

import SwiftUI

public struct StyleGuideSubheadingView: View {

    var text: String
    var theme: StyleGuideTheme

    public var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(text)
                .style(theme.secondaryTextStyle)
                .foregroundColor(.white)
                .padding(5)
                .background(theme.primaryColor)
                .padding(.leading, .margin)
            Divider()
        }
    }
}

struct StyleGuideSubheadingView_Previews: PreviewProvider {
    static var previews: some View {
        StyleGuideSubheadingView(text: "Subheading", theme: .default)
    }
}
