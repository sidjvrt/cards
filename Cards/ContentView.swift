//
//  ContentView.swift
//  Cards
//
//  Created by Vikash Kumar on 15/11/22.
//

import SwiftUI

struct ContentView: View {
    @State var cpuScore: Int = 0
    @State var playerScore: Int = 0
    @State var cpuCard: String = "card2"
    @State var playerCard: String = "card6"
    var body: some View {
        
        ZStack {
            
            LinearGradient(colors: [.orange, .red],
                           startPoint: .bottomLeading,
                           endPoint: .topLeading)
            .ignoresSafeArea()
            
            
            VStack {
                Image("logo")
                    .resizable()
                    .frame(width: 200, height: 200)
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(20)
                Spacer()
                
                HStack {
                    Spacer()
                    Text("CPU Card")
                    Spacer()
                    Text("Player Card")
                    Spacer()
                }
                HStack {
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    Image(playerCard)
                    Spacer()
                }
                Spacer()
                
                Button(action: {
                    let cpuRand: Int = Int.random(in: 2...14)
                    let playerRand: Int = Int.random(in: 2...14)
                    cpuCard = "card" + String(cpuRand)
                    playerCard = "card" + String(playerRand)
                    
                }, label: {Text("Deal")
                    .font(.largeTitle)
                    .foregroundColor(Color.white)
                })
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
