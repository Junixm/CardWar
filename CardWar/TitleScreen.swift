//
//  TitleScreen.swift
//  CardWar
//
//  Created by Jun on 27/4/25.
//

import SwiftUI

struct TitleScreen: View {
    @StateObject var model = GameModel()
    
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
                    Image(model.playerCard)
                    Spacer()
                    Image(model.cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    model.deal()
                } label: {
                    Image("button")
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(model.playerScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                    
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(model.cpuScore))
                            .font(.largeTitle)
                    }
                    
                    Spacer()
                }
                .foregroundColor(.white)
                
                Spacer()
            }
        }
    }
}

#Preview {
    TitleScreen()
}
