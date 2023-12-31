//
//  Routine.swift
//  UnammedApp
//
//  Created by Devere Weaver on 12/27/23.
//

import Foundation

struct Routine {
    var name: String
    var lifts: [Lift]
    var emoji: String
    
    init() {
        // empty initializer
        self.name = ""
        self.lifts = []
        self.emoji = ""
    }
    
    init(name: String, lifts: [Lift], emoji: String) {
        // manually initialize name and liftsj
        self.name = name
        self.lifts = lifts
        self.emoji = emoji
    }
    
   
}
