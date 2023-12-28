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
    
    init() {
        // empty initializer
        self.name = ""
        self.lifts = []
    }
    
    init(name: String, lifts: [Lift]) {
        // manually initialize name and liftsj
        self.name = name
        self.lifts = lifts
    }
    
   
}
