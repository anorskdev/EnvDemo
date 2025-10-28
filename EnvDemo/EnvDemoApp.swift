//
//  EnvDemoApp.swift
//  EnvDemo

import SwiftUI

@main
struct EnvDemoApp: App {

    // Create variables to be inserted into environment.
    @State private var theme: Theme = Theme()
    @State private var myModel: MyModel = MyModel()

    var body: some Scene {
        WindowGroup {
            ContentView()
            // Add environments in "App" to top level view.
                .environment(theme)
                .environment(myModel)
        }
    }
}
