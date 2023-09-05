//
//  CentersPage.swift
//  TwoKBuilder
//
//  Created by Aleck David Holly on 2023-09-05.
//

import SwiftUI
import Charts

struct CentersPage: View {
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
    CentersPage(playerRating: PlayerRatings(id: UUID(),name: "Anthony Davis", height: "6'10", wingSpan: "7'6",  weight: 252, image: .davis, finishing: Finishing(shotClose: 90, drivingLayup: 70, drivingDunk: 82, standingDunk: 81, postControl: 81), shooting: Shooting(midRange: 76, threePoint: 70, freeThrow: 78), playmaking: Playmaking(passing: 60, ballHandle: 70, speedWBall: 55), defense: Defense(interiorD: 85, perimD: 71, steal: 36, block: 87, offRebound: 70, defRebound: 86), physicals: Physicals(speed: 65, acceleration: 60, strength: 70, vertical: 70, stamina: 92)))
}
