//
//  MyModel.swift
//  EnvDemo

import SwiftUI

enum Weapon: Int, CaseIterable {
    case sword
    case shield
}

extension Weapon: Identifiable {    // For use with ForEach
    var id: Weapon { self }
}

// Will need name to create new player. The score and weapons have defaults.
struct Player: Identifiable {
    let id: UUID = UUID() // Used to satisfy Identifiable protocol used by ForEach
    var name: String
    var score: Int = 0
    var weapons: [Weapon] = []
}

extension Player {
    mutating func incrementScore() {
        score += 1
    }
    mutating func addWeapon(_ weapon: Weapon) {
        weapons.append(weapon)
    }
}

// ---- @Observable here ----
// Note: MyModel is class and not a struct.

@Observable
class MyModel {
    var players: [Player] = []
}

extension MyModel {
    // NOTE: create a "demo" used by #Preview.
    //       Populated with a couple of Players.
    static var demo: MyModel {
        let model = MyModel()
        // Add player with default values
        model.addPlayer(name: "Alice")
        // Alternate way to add player.  Uses non-default values.
        let bob = Player(name: "Bob", score: 3, weapons: [.shield])
        model.addPlayer(bob)
        return model
    }

    func addPlayer(_ player: Player) {
        players.append(player)
    }

    func addPlayer(name: String) {
        players.append(Player(name: name))
    }

    func incrementScore(for player: Player) {
        if let index = players.firstIndex(where: { player.id == $0.id}) {
            players[index].incrementScore()
        }
    }

    func addWeapon(_ weapon: Weapon, to player: Player) {
        if let index = players.firstIndex(where: { player.id == $0.id}) {
            players[index].addWeapon(weapon)
        }
    }
}
