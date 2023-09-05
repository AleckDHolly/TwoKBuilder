//
//  SGPage.swift
//  TwoKBuilder
//
//  Created by Aleck David Holly on 2023-09-05.
//

import SwiftUI
import Charts

struct SGPage: View {
    var playerRating: PlayerRatings
    
    var body: some View {
        ScrollView {
            Image(playerRating.image)
                .resizable()
                .scaledToFit()
            
            Text("Height: \(playerRating.height) | Weight: \(playerRating.weight) | Wingspan: \(playerRating.wingSpan)")
                .fontWeight(.semibold)
                .padding(10)
            
            Text("Finishing")
                .font(.title)
                .fontWeight(.bold)
                .padding([.bottom, .top], -3)
            
            Chart(playerRating.finishingStat) { finishing in
                BarMark(
                    x: .value("Value", finishing.value),
                    y: .value("Stat", finishing.label)
                )
                .annotation(position: .trailing) {
                    Text("\(finishing.value)")
                        .padding(.bottom, 5)
                        .foregroundStyle(.secondary)
                        .font(.subheadline)
                }
            }
            .frame(height: 5*40)
            .padding([.horizontal, .bottom])
            .foregroundColor(.blue)
            .chartXScale(domain: 0...99 + 5)
            
            Text("Shooting")
                .font(.title)
                .fontWeight(.bold)
                .padding([.bottom, .top], -3)
            
            Chart(playerRating.shootingStat) { shooting in
                BarMark(
                    x: .value("Value", shooting.value),
                    y: .value("Stat", shooting.label)
                )
                .annotation(position: .trailing) {
                    Text("\(shooting.value)")
                        .padding(.bottom, 5)
                        .foregroundStyle(.secondary)
                        .font(.subheadline)
                }
            }
            .frame(height: 3*40)
            .padding([.horizontal, .bottom])
            .foregroundColor(.green)
            .chartXScale(domain: 0...99 + 5)
            
            Text("Playmaking")
                .font(.title)
                .fontWeight(.bold)
                .padding([.bottom, .top], -3)
            
            Chart(playerRating.playmakingStat) { playmaking in
                BarMark(
                    x: .value("Value", playmaking.value),
                    y: .value("Stat", playmaking.label)
                )
                .annotation(position: .trailing) {
                    Text("\(playmaking.value)")
                        .padding(.bottom, 5)
                        .foregroundStyle(.secondary)
                        .font(.subheadline)
                }
            }
            .frame(height: 3*40)
            .padding([.horizontal, .bottom])
            .foregroundColor(.yellow)
            .chartXScale(domain: 0...99 + 5)
            
            Text("Defense")
                .font(.title)
                .fontWeight(.bold)
                .padding([.bottom, .top], -3)
            
            Chart(playerRating.defenseStat) { defense in
                BarMark(
                    x: .value("Value", defense.value),
                    y: .value("Stat", defense.label)
                )
                .annotation(position: .trailing) {
                    Text("\(defense.value)")
                        .padding(.bottom, 5)
                        .foregroundStyle(.secondary)
                        .font(.subheadline)
                }
            }
            .frame(height: 6*40)
            .padding([.horizontal, .bottom])
            .foregroundColor(.red)
            .chartXScale(domain: 0...99 + 5)
            
            Text("Physicals")
                .font(.title)
                .fontWeight(.bold)
                .padding([.bottom, .top], -3)
            
            Chart(playerRating.physicalsStat) { physical in
                BarMark(
                    x: .value("Value", physical.value),
                    y: .value("Stat", physical.label)
                )
                .annotation(position: .trailing) {
                    Text("\(physical.value)")
                        .padding(.bottom, 5)
                        .foregroundStyle(.secondary)
                        .font(.subheadline)
                }
            }
            .frame(height: 5*40)
            .padding([.horizontal, .bottom])
            .foregroundColor(.orange)
            .chartXScale(domain: 0...99 + 5)
        }
        .navigationTitle(playerRating.name)
    }
}

#Preview {
    SGPage(playerRating: PlayerRatings(id: UUID(), name: "Klay Thompson", height: "6'6", wingSpan: "6'8", weight: 220, image: .klay,  finishing: Finishing(shotClose: 91, drivingLayup: 75, drivingDunk: 70, standingDunk: 25, postControl: 25), shooting: Shooting(midRange: 90, threePoint: 92, freeThrow: 85), playmaking: Playmaking(passing: 77, ballHandle: 76, speedWBall: 75), defense: Defense(interiorD: 71, perimD: 84, steal: 50, block: 51, offRebound: 25, defRebound: 60), physicals: Physicals(speed: 75, acceleration: 75, strength: 63, vertical: 67, stamina: 93)))
}
