//
//  navigation.swift
//  TradingCardProject
//
//  Created by junxi Yim on 2024/1/23.
//

import SwiftUI

struct Navigation: View {
    
    let CoverPhoto: String
    let playerName: String
    let Discription: String
    
    var body: some View {
        HStack{
            Image(CoverPhoto)
                .resizable()
                .frame(width: 60,height: 80)
                .offset(y:15)
                .clipShape(.circle)
            VStack(alignment:.leading){
                Text(playerName)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(Discription)
                    
            }
        }
    }
}

#Preview {
    Navigation(CoverPhoto: "Twistzz", playerName: "Twistzz", Discription: "The Best Hair among all Players")
}
