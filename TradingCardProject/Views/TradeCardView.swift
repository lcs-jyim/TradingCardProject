//
//  TradeCardView.swift
//  TradingCardProject
//
//  Created by junxi Yim on 2024/1/21.
//

import SwiftUI

struct DetailView: View{
    
    let item: CardView
    
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
                    Text(item.PlayName)
                        .foregroundStyle(LinearGradient(gradient: TextgradientColors, startPoint: .trailing, endPoint: .leading))
                        .bold()
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Spacer()
                }
            }
            
            VStack {
                ZStack{
                    Rectangle()
                        .fill(.white)
                    
                    Image("fzbackground")
                        .resizable()
                        .frame(height:400)
                        .padding(.horizontal,10)
                    Image(item.playerImage)
                        .resizable()
                        .scaledToFit()
                        .frame(height:390)
                    
                }
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
                                            Text("\(item.Age)")
                                        }
                                        Spacer()
                                        Divider()
                                        Spacer()
                                        VStack{
                                            Text("KPR")
                                            Text(item.formattedKPR)
                                        }
                                        Spacer()
                                        Divider()
                                        Spacer()
                                        VStack{
                                            Text("Surviving")
                                            Text(item.Surviving)
                                        }
                                        Spacer()
                                        Divider()
                                        Spacer()
                                        VStack{
                                            Text("ADR")
                                            Text(item.formattedADR)
                                        }
                                        Spacer()
                                        Divider()
                                        Spacer()
                                        VStack{
                                            Text("Impact")
                                            Text(item.formattedImpact)
                                        }
                                        
                                        Spacer()
                                        Divider()
                                        Spacer()
                                        VStack{
                                            Text("KAST")
                                            Text(item.KAST)
                                        }
                                        Spacer()
                                        Divider()
                                        Spacer()
                                        VStack{
                                            Text("Rating 2.0")
                                            Text(item.formattedRating)
                                        }
                                        
                                    }
                                }
                            }
                        }
                        
                        Text(item.PlayerIntroduction)
                        
                        Spacer()
                        
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal,10)
                }
                .ignoresSafeArea()
                .background{Image("blastbackground").resizable() .opacity(0.7) .ignoresSafeArea()}
                
            }
            
            
            
            
            
            
            
            
            VStack {
                HStack {
                    Image(item.PlayerTeamLogo)
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
                
                Image(item.PlayerSignatureLogo)
                    .resizable()
                    .frame(width:100,height:65)
                
                
                
            }
            .offset(x:100,y:-200)
            
        }
        .navigationTitle("")
        .navigationBarTitleDisplayMode(.inline)
        
    }
    
    
}
    
    
    #Preview {
        NavigationStack{
            DetailView(item: Twistzz)
        }
    }

