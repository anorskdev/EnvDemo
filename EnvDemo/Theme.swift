//
//  Theme.swift
//  EnvDemo

import SwiftUI

// Color theme that is attached to ContentView in the "App" file.
// The theme can be picked up throughout heirarchy of views
@Observable
class Theme {
    // By giving all variables defaults, one gets a default initializer: .init()
    var fgColor: Color = .black
    var bgColor: Color = .white
    var buttonFgColor: Color = .white
    var buttonBgColor: Color = .blue

    // A convenience initializer to make it easier to build other Themes.
    convenience init(fgColor: Color, bgColor: Color, buttonFgColor: Color, buttonBgColor: Color) {
        self.init()
        self.fgColor = fgColor
        self.bgColor = bgColor
        self.buttonFgColor = buttonFgColor
        self.buttonBgColor = buttonBgColor
    }
}

extension Theme {
    // NOTE: create a "demo" used by #Preview
    static let demoTheme = Theme(fgColor: .red, bgColor: .green, buttonFgColor: .orange, buttonBgColor: .blue)
    static let defaultTheme = Theme()
    static let yellowTheme = Theme(fgColor: .black, bgColor: Color(uiColor: UIColor(red: 0.9, green: 0.9, blue: 0.0, alpha: 1.0)), buttonFgColor: .yellow, buttonBgColor: .gray)
}
