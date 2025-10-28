//
//  ThemeButton.swift
//  EnvDemo

import SwiftUI

// Set up custom button to look like action/label button.
struct ThemeButton<Content: View>: View {
    let action: () -> Void
    let label: () -> Content

    @Environment(Theme.self) var theme

    var body: some View {
        Button(action: {
            action()
        }, label: { label() })
        .foregroundStyle(theme.buttonFgColor)
        .background(theme.buttonBgColor)
        .clipShape(RoundedRectangle(cornerRadius: 6))
    }
}

#Preview {
    // ThemeButton just uses Theme
    ThemeButton(action: { print("tapped")
    }, label: {
        Text("Tap me").font(.largeTitle)
    })
    .environment(Theme.demoTheme)

    // Another example with a different theme
    ThemeButton {
        print("tapped")
    } label: {
        Text("Tap me").font(.largeTitle)
    }
    .padding()
    .environment(Theme.yellowTheme)

}
