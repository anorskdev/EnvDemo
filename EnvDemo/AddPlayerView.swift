//
//  AddPlayerView.swift
//  EnvDemo

import SwiftUI

struct AddPlayerView: View {

    @State private var newName = ""

    // Pull in environments used in this view.
    @Environment(Theme.self) var theme
    @Environment(MyModel.self) var myModel

    var body: some View {
        VStack {
            ForEach(myModel.players) { player in
                ThemeButton {
                    myModel.incrementScore(for: player)
                } label: {
                    Text(player.name + ": \(player.score)")
                        .font(.title)
                        .padding()
                }
            }

            HStack {
                Text("Add Player:")
                TextField("Add Name", text: $newName, onCommit: {
                    myModel.addPlayer(name: newName)
                    // Reset TextField after 0.5sec delay, so ready to type in next name.
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        self.newName = ""
                    }
                })
                .textFieldStyle(.roundedBorder)
            }
        }
        .padding()
        .background(theme.bgColor)
        .foregroundStyle(theme.fgColor)
        .navigationTitle("Add Players")
    }
}

#Preview {
    // AddPlayerView uses Theme and MyModel
    NavigationStack { // Added Navigation Stack to Preview so title displays.
        AddPlayerView()
            .environment(Theme.demoTheme)
            .environment(MyModel.demo)
    }
}
