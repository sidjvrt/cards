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
    @State var cpuCard: String = "card14"
    @State var playerCard: String = "card14"
    let orangered = Color(red: 1.0, green: 0.2705882353, blue: 0.0)
    var body: some View {
        
        ZStack {
            
            LinearGradient(colors: [.orange, .red],
                           startPoint: .bottomLeading,
                           endPoint: .topLeading)
            .ignoresSafeArea()
            
            
            VStack(spacing: 10) {

                Text("C   A   R   D   S").frame(maxWidth: .infinity).font(.headline).background(LinearGradient(colors: [.orange, .red],startPoint: .bottomLeading, endPoint: .topLeading))
                .padding(.top, 50).foregroundColor(.white)
                HStack {
                    
                    Button(action: {
                        cpuScore = 0
                        playerScore = 0
                        cpuCard = "card14"
                        playerCard = "card14"
                        
                    }, label: {Text("New")
                            .frame(maxWidth: .infinity)
                            .padding(5)
                            .background(.blue)
                            .cornerRadius(5)
                            .font(.largeTitle)
                            .foregroundColor(.white)
                    }).padding(.horizontal)
                    Spacer()
                }
                Spacer()
                HStack (spacing: 30) {
                    
                    VStack {
                        Text("CPU Card")
                        Image(cpuCard)
                    }
                    
                    VStack {
                        Text("Player Card")
                        Image(playerCard)
                    }
                }
                Spacer()
                
                HStack {
                    Spacer()
                    VStack {
                        Text("CPU Score").foregroundColor(.green).padding(10)
                        Divider().overlay(.green)
                        Text(String(cpuScore)).font(.title).foregroundColor(.green).padding(10)
                        
                    }.background(.black).cornerRadius(5)
                    Spacer()
                    VStack {
                        Text("Player Score").foregroundColor(.red).padding(10)
                        Divider().overlay(.red)
                        Text(String(playerScore)).font(.title).foregroundColor(.red).padding(10)
                        
                    }.background(.white).cornerRadius(5)
                    Spacer()
                }
                Spacer()
                
                
                Button(action: {
                    let cpuRand: Int = Int.random(in: 2...14)
                    let playerRand: Int = Int.random(in: 2...14)
                    
                    if cpuRand > playerRand {
                        cpuScore += 1
                    } else if playerRand > cpuRand {
                        playerScore += 1
                    }
                    
                    cpuCard = "card" + String(cpuRand)
                    playerCard = "card" + String(playerRand)
                    
                }, label: {Text("Deal")
                        .padding(10)
                        .frame(
                            minWidth: 0,
                            maxWidth: .infinity
                        )
                        .font(.largeTitle)
                        .foregroundColor(Color.white)
                        .background(.red)
                        .cornerRadius(10)
                }).padding(.horizontal).padding(.bottom, 50)
                Spacer()
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
