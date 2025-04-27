//
//  Model.swift
//  CardWar
//
//  Created by Jun on 27/4/25.
//

import Foundation

class GameModel: ObservableObject {
    @Published var playerCard: String
    @Published var cpuCard: String
    @Published var playerScore: Int
    @Published var cpuScore: Int
    
    init() {
        self.playerCard = "back"
        self.cpuCard = "back"
        self.playerScore = 0
        self.cpuScore = 0
    }
    
    func deal() {
        let playerValue = Int.random(in: 2...14)
        let cpuValue = Int.random(in: 2...14)
        
        self.playerCard = "card\(playerValue)"
        self.cpuCard = "card\(cpuValue)"
        
        if playerValue > cpuValue {
            self.playerScore += 1
        } else if playerValue < cpuValue {
            self.cpuScore += 1
        }
    }
}
