//
//  TradeCardView.swift
//  TradingCardProject
//
//  Created by junxi Yim on 2024/1/21.
//

import SwiftUI


struct TradeCardView: View {
    
    let Age: Int
    let KPR: Double
    let Surviving: String
    let ADR: Double
    let Impact: Double
    let KAST: String
    let Rating: Double
    let PlayName: String
    let PlayerIntroduction: String
    
    var formattedKPR: String {
        return String(format: "%.2f", KPR)
    }
    
    var formattedADR: String {
        return String(format: "%.2f", ADR)
    }
    
    var formattedImpact: String {
        return String(format: "%.2f", Impact)
    }
    
    var formattedRating: String {
        return String(format: "%.2f", Rating)
    }
    
    
    
    
    
    let gradientColors = Gradient(colors: [Color.red, Color.customblue])
    let TextgradientColors = Gradient(colors: [Color.bloodRed, Color.kleinblue])
    var body: some View {
        
            ZStack{
                Rectangle()
                    .fill(.black)
                    .ignoresSafeArea()
                
                
                ZStack {
                    VStack{
                        LinearGradient(gradient: gradientColors, startPoint: .leading, endPoint: .trailing)
                            .ignoresSafeArea()
                            .frame(height:50)
                        Spacer()
                        
                    }
                    VStack {
                        Text(PlayName)
                            .foregroundStyle(LinearGradient(gradient: TextgradientColors, startPoint: .trailing, endPoint: .leading))
                            .bold()
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        
                        
                        
                        Spacer()
                    }
                }
                
                VStack {
                    Rectangle()
                        .fill(.white)
                        .frame(height:420)
                        .padding(.horizontal,20)
                        .padding(.top,70)
                    
                    
                    ScrollView(.vertical){
                        LazyVStack{
                            
                            Text("Statistics")
                                .font(.title)
                            ScrollView(.horizontal){
                                LazyHStack{
                                    VStack(alignment:.leading){
                                        
                                        HStack{
                                            VStack{
                                                Text("Age")
                                                Text("\(Age)")
                                            }
                                            Spacer()
                                            Divider()
                                            Spacer()
                                            VStack{
                                                Text("KPR")
                                                Text(formattedKPR)
                                            }
                                            Spacer()
                                            Divider()
                                            Spacer()
                                            VStack{
                                                Text("Surviving")
                                                Text(Surviving)
                                            }
                                            Spacer()
                                            Divider()
                                            Spacer()
                                            VStack{
                                                Text("ADR")
                                                Text(formattedADR)
                                            }
                                            Spacer()
                                            Divider()
                                            Spacer()
                                            VStack{
                                                Text("Impact")
                                                Text(formattedImpact)
                                            }
                                            
                                            Spacer()
                                            Divider()
                                            Spacer()
                                            VStack{
                                                Text("KAST")
                                                Text(KAST)
                                            }
                                            Spacer()
                                            Divider()
                                            Spacer()
                                            VStack{
                                                Text("Rating 2.0")
                                                Text(formattedRating)
                                            }
                                            
                                        }
                                    }
                                }
                            }
                            
                            Text(PlayerIntroduction)
                            
                            Spacer()
                            
                        }
                        .foregroundColor(.white)
                        .padding(.horizontal,10)
                    }
                    .ignoresSafeArea()
                    .background{Image("blastbackground").resizable() .opacity(0.7) .ignoresSafeArea()}
                    
                }
                
                
                
                
                Image("fzbackground")
                    .resizable()
                    .padding(.horizontal,30)
                    .padding(.vertical,80)
                    .padding(.bottom,200)
                
                
                Image("Twistzz")
                    .resizable()
                    .scaledToFit()
                    .padding(.bottom,200)
                    .padding(.horizontal,30)
                    .padding(.vertical,80)
                
                
                
                
                
                VStack {
                    HStack {
                        Image("fazelogo")
                            .resizable()
                            .frame(width: 90,height:65)
                        Spacer()
                    }
                    Spacer()
                }
                .padding(.top,60)
                
                
                ZStack {
                    Circle()
                    
                        .frame(width:110)
                    
                    Image("twistzzSticker")
                        .resizable()
                        .frame(width:100,height:65)
                    
                    
                    
                }
                .offset(x:100,y:-200)
            }
        }
}

let Twistzz = TradeCardView(Age: 24, KPR: 0.68, Surviving: "37%", ADR: 74.3, Impact: 1.03, KAST: "73.7%", Rating: 1.10, PlayName: "Russel \"Twistzz\" Van Dulken", PlayerIntroduction: """
Twistzz was a reliable performer with solid numbers from an exceptionally large sample, in addition to frequent peaks, as illustrated by his high percentage of maps (31%) with 1.30+ ratings. He was also among the most consistent players round-to-round in the scene, with his 73.7% KAST ranking him 15th in the Top 20.
                  
One particular aspect in which Twistzz stood out was his incredible trade ability. He ranked fifth for trades involved per round (0.30), ninth for trade kills per round (0.16) and 11th for percentage of deaths traded (23.6%), putting him as one of the best traders on both sides. This is best evidenced by the fact that he had the second-most trade kills per round win in the entire Top 20 at 0.18.

“I’m happy to be on this list again but disappointed with the individual year I had. I’m not a player to chase these individual awards as I believe they are a side-effect to playing good CS as a team and when you do your role well within a team exceptionally well. I look forward to my years with Liquid and seeing how far I can push my level. I know Casper (cadiaN), Wilton (zews) and the rest of the supporting staff will help me with that push."
""")

#Preview {
    Twistzz
}
