//
//  PGs.swift
//  TwoKBuilder
//
//  Created by Aleck David Holly on 2023-09-05.
//

import SwiftUI

struct PGs: View {
    var body: some View {
        NavigationView(content: {
            List {
                ForEach(pointGuards) { player in
                    NavigationLink(destination: PlayerPage(playerRating: PlayerRatings(id: UUID(), name: player.name, height: player.height, wingSpan: player.wingSpan, weight: player.weight, image: player.image, finishing: Finishing(shotClose: player.finishing.shotClose, drivingLayup: player.finishing.drivingLayup, drivingDunk: player.finishing.drivingDunk, standingDunk: player.finishing.standingDunk, postControl: player.finishing.postControl), shooting: Shooting(midRange: player.shooting.midRange, threePoint: player.shooting.threePoint, freeThrow: player.shooting.freeThrow), playmaking: Playmaking(passing: player.playmaking.passing, ballHandle: player.playmaking.ballHandle, speedWBall: player.playmaking.speedWBall), defense: Defense(interiorD: player.defense.interiorD, perimD: player.defense.perimD, steal: player.defense.steal, block: player.defense.block, offRebound: player.defense.offRebound, defRebound: player.defense.defRebound), physicals: Physicals(speed: player.physicals.speed, acceleration: player.physicals.acceleration, strength: player.physicals.strength, vertical: player.physicals.vertical, stamina: player.physicals.stamina)))) { Text("\(player.name)") }
                }
            }
            .scrollContentBackground(.hidden)
            .navigationTitle("Point Guards")
        })
    }
}

#Preview {
    PGs()
}
