//
//  ThemeChangeView.swift
//  EnvDemo

import SwiftUI

struct ThemeChangeView: View {

    // Pull in environments used in this view.  (Just Theme, not MyModel)
    @Environment(Theme.self) var theme

    var body: some View {
        @Bindable var theme = theme
        VStack {
            ColorPicker("Foreground Color", selection: $theme.fgColor)
            ColorPicker("Background Color", selection: $theme.bgColor)
            ColorPicker("Button Foreground Color", selection: $theme.buttonFgColor)
            ColorPicker("Button Background Color", selection: $theme.buttonBgColor)

            ThemeButton {
            } label: {
                Text("Demo Button")
                    .padding()
            }

        }
        .padding()
        .background(theme.bgColor)
        .foregroundStyle(theme.fgColor)
        .navigationTitle(Text("Theme Settings"))
    }
}

#Preview {
    // Note: This view does not need MyModel environment.  Just uses Theme.
    ThemeChangeView()
        .environment(Theme.demoTheme)

}
