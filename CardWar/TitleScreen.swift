//
//  TitleScreen.swift
//  CardWar
//
//  Created by Jun on 27/4/25.
//

import SwiftUI

struct TitleScreen: View {
    
    @State var playerCard = "back"
    @State var cpuCard = "back"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack {
            Image("background-plain")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                .foregroundColor(.white)
                
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                
                Spacer()
            }
        }
    }
    
    func deal() {
        // randomize card and update scores
        let a = Int.random(in: 2...14)
        let b = Int.random(in: 2...14)
        
        playerCard = "card" + String(a)
        cpuCard = "card" + String(b)
        
        if a > b {
            playerScore += 1
        } else if a < b {
            cpuScore += 1
        }
    }
}

#Preview {
    TitleScreen()
}
