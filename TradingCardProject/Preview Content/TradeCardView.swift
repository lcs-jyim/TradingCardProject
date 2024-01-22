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
            VStack {
                Rectangle()
                    .fill(.black)
                    .ignoresSafeArea()
                    .frame(height:500)
                Spacer()
            }
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
            Rectangle()
                .fill(.white)
                .padding(.horizontal,20)
                .padding(.vertical,70)
                .padding(.bottom,200)
            
            ZStack {
                Image("fzbackground")
                    .resizable()
                
                
                    
            }
            .padding(.horizontal,30)
            .padding(.vertical,80)
            .padding(.bottom,200)
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
            
            Image("raincs")
                .resizable()
                .scaledToFit()
                .padding(.bottom,220)
            
            
                        }
        .padding(.bottom,25)
    }
}

#Preview {
    TradeCardView()
}
