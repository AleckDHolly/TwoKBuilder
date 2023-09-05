//
//  PGPage.swift
//  TwoKBuilder
//
//  Created by Aleck David Holly on 2023-09-04.
//

import SwiftUI
import Charts

struct PGPage: View {
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
    PGPage(playerRating: PlayerRatings(id: UUID(),name: "Kyrie Irving", height: "6'2", wingSpan: "6'4", weight: 195, image: .kyrieIrving, finishing: Finishing(shotClose: 82, drivingLayup: 91, drivingDunk: 30, standingDunk: 25, postControl: 64), shooting: Shooting(midRange: 91, threePoint: 82, freeThrow: 83), playmaking: Playmaking(passing: 87, ballHandle: 98, speedWBall: 83), defense: Defense(interiorD: 34, perimD: 58, steal: 25, block: 36, offRebound: 35, defRebound: 45), physicals: Physicals(speed: 82, acceleration: 87, strength: 41, vertical: 57, stamina: 99)))
}
