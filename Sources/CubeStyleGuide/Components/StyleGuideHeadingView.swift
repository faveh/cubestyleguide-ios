//
//  StyleGuideHeadingView.swift
//  CubeStyleGuide
//
//  Created by Sam Davis on 02/08/2022.
//  Copyright © 2022 3 SIDED CUBE APP PRODUCTIONS LTD. All rights reserved.
//

import SwiftUI

public struct StyleGuideHeadingView: View {

    var text: String
    var theme: StyleGuideTheme

    public var body: some View {
        Text(text)
            .style(theme.primaryTextStyle)
            .textCase(.uppercase)
            .padding(5)
            .frame(maxWidth: .infinity)
            .background(theme.primaryColor)
            .foregroundColor(.white)
    }
}

fileprivate struct UIStyleGuideHeadingView_Previews: PreviewProvider {
    static var previews: some View {
        StyleGuideHeadingView(text: "UI Style Guide Header", theme: .default)
    }
}
