//
//  ThemedView.swift
//  EnvDemo

import SwiftUI

struct ThemedView: View {

    // Pull in environments used in this view.
    @Environment(Theme.self) var theme
    @Environment(MyModel.self) var myModel

    var body: some View {
        VStack {
            Text("A Themed Sub-View").font(.largeTitle)
            Text("Tap player button to increment score")
            ForEach(myModel.players) { player in
                ThemeButton {
                    myModel.incrementScore(for: player)
                } label: {
                    Text(player.name + ": \(player.score)")
                        .font(.title)
                        .padding()
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(theme.bgColor)
        .foregroundStyle(theme.fgColor)
    }
}

#Preview {
    // Previews need environments used by view or sub-views
    ThemedView()
        .environment(Theme.demoTheme)
        .environment(MyModel.demo)
}
