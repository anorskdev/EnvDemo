//
//  ContentView.swift
//  EnvDemo

import SwiftUI

struct ContentView: View {

    // NOTE: ContentView does not currently
    //       need Theme or MyModel environments -
    //       but used in sub-views.
    //       Add environments here if
    //       required later.

    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink("Theme Settings", destination: ThemeChangeView()).padding()

                NavigationLink("Add players", destination: AddPlayerView()).padding()
                Divider()
                ThemedView()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationTitle(Text("Environment Demo"))
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    // Previews need environments used by view or sub-views.
    // Though ContentView does not reference Theme or MyModel, its sub-views do.
    ContentView()
        .environment(Theme.demoTheme)
        .environment(MyModel.demo)
}
