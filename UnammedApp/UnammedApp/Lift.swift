//
//  Lift.swift
//  UnammedApp
//
//  Created by Devere Weaver on 12/27/23.
//

import Foundation

struct Lift {
    // consider make a "set" its own struct that can account for the weight
    // and number of reps for each set,
    // it may even need to be a computed property
    var name: String
//    var warmupSets: Int
//    var warmupReps: Int
    var workingSets: Int
    var workingReps: Int
    var targetWeight: Float
//    var notes: String = ""
}
