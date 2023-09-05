//
//  PlayerRatings.swift
//  TwoKBuilder
//
//  Created by Aleck David Holly on 2023-09-04.
//

import Foundation
import SwiftUI

struct Stat: Identifiable {
    let id: Int
    let label: String
    let value: Int
}

struct Finishing {
    let shotClose, drivingLayup, drivingDunk, standingDunk, postControl: Int
}

struct Shooting {
    let midRange, threePoint, freeThrow: Int
}

struct Playmaking {
    let passing, ballHandle, speedWBall: Int
}

struct Defense {
    let interiorD, perimD, steal, block, offRebound, defRebound: Int
}

struct Physicals {
    let speed, acceleration, strength, vertical, stamina: Int
}

struct PlayerRatings: Identifiable {
    var id = UUID()
    let name, height,wingSpan : String
    let weight: Int
    let image: ImageResource
    let finishing: Finishing
    let shooting: Shooting
    let playmaking: Playmaking
    let defense: Defense
    let physicals: Physicals
    
    var finishingStat: [Stat] {
        [
            Stat(id: 1, label: "Close Shot", value: finishing.shotClose),
            Stat(id: 2, label: "Driving Layup", value: finishing.drivingLayup),
            Stat(id: 3, label: "Driving Dunk", value: finishing.drivingDunk),
            Stat(id: 4, label: "Standing Dunk", value: finishing.standingDunk),
            Stat(id: 5, label: "Post Control", value: finishing.postControl)
        ]
    }
    
    var shootingStat: [Stat] {
        [
            Stat(id: 1, label: "Mid-Range", value: shooting.midRange),
            Stat(id: 2, label: "Three-Pointer", value: shooting.threePoint),
            Stat(id: 3, label: "Free-Throw", value: shooting.freeThrow)
        ]
    }
    
    var playmakingStat: [Stat] {
        [
            Stat(id: 1, label: "Pass Accuracy", value: playmaking.passing),
            Stat(id: 2, label: "Ball Handle", value: playmaking.ballHandle),
            Stat(id: 3, label: " Speed W/ Ball", value: playmaking.speedWBall)
        ]
    }
    
    var defenseStat: [Stat] {
        [
            Stat(id: 1, label: "Interior Defense", value: defense.interiorD),
            Stat(id: 2, label: "Perimeter Defense", value: defense.perimD),
            Stat(id: 3, label: "Steal", value: defense.steal),
            Stat(id: 4, label: "Block", value: defense.block),
            Stat(id: 5, label: "Offensive Rebound", value: defense.offRebound),
            Stat(id: 6, label: "Defensive Rebound", value: defense.defRebound)
        ]
    }
    
    var physicalsStat: [Stat] {
        [
            Stat(id: 1, label: "Speed", value: physicals.speed),
            Stat(id: 2, label: "Acceleration", value: physicals.acceleration),
            Stat(id: 3, label: "Strength", value: physicals.strength),
            Stat(id: 4, label: "Vertical", value: physicals.vertical),
            Stat(id: 5, label: "Stamina", value: physicals.stamina)
        ]
    }
}


