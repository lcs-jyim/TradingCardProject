//
//  navigation.swift
//  TradingCardProject
//
//  Created by junxi Yim on 2024/1/23.
//

import SwiftUI

struct Navigation: View {
    let item: CardView
    
    
    var body: some View {
        HStack{
            Image(item.playerImage)
                .resizable()
                .frame(width: 60,height: 80)
                .offset(y:15)
                .clipShape(.circle)
            VStack(alignment:.leading){
                Text(item.PlayNameShort)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(item.Discription)
                    
            }
        }
    }
}

#Preview {
    NavigationStack{
        Navigation(item:Twistzz)
    }
}
