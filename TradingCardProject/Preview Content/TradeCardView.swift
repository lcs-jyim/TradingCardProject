//
//  TradeCardView.swift
//  TradingCardProject
//
//  Created by junxi Yim on 2024/1/21.
//

import SwiftUI

struct TradeCardView: View {
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
                    Text("Håvard \"rain\" Nygaard")
                        .foregroundStyle(LinearGradient(gradient: TextgradientColors, startPoint: .trailing, endPoint: .leading))
                        .bold()
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    
                    
                    
                    Spacer()
                }
            }
            
            VStack {
                Rectangle()
                    .fill(.white)
                    .padding(.horizontal,20)
                    .padding(.vertical,70)
                    .frame(height:535)
                
                ScrollView(.vertical){
                    LazyVStack{
                        Text("Statistics")
                            .font(.title)
                        HStack {
                            Text("xxxxxx")
                            Spacer()
                            Text("xxxxxxx")
                            Spacer()
                            Text("xxxxxxx")
                        }
                        HStack {
                            Text("xxxxxx")
                            Spacer()
                            Text("xxxxxxx")
                           Spacer()
                            Text("xxxxxxx")
                        }
                        Text("xxx")
                        Text("xxx")

                        Text("xxx")

                        Text("xxx")

                        Text("xxx")
                        Text("xxx")
                        
                        Text("xxx")

                        Text("xxx")

                        Text("xxx")

                        Text("xxx")

                        Text("xxx")
                        Spacer()

                    }
                    
                    .frame(height:400)
                    
                }
                .ignoresSafeArea()
                .background(Color.blue)
                .padding(.horizontal,10)
                
            }
        
            
            
                Image("fzbackground")
                    .resizable()

            .padding(.horizontal,30)
            .padding(.vertical,80)
            .padding(.bottom,200)
            Image("raincs")
                .resizable()
                .scaledToFit()
                .padding(.bottom,220)
            
            
           
            
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    ZStack {
                        Circle()
                            .fill(.yellow)
                            .frame(width:100)
                        Image("fazelogo")
                            .resizable()
                            .frame(width: 80,height:60)
                    }
                }
            }
            .padding(.horizontal,10)
            .padding(.vertical,80)
            .padding(.bottom,170)
            
                        }
        .padding(.bottom,25)
    }
    
}

#Preview {
    TradeCardView()
}
