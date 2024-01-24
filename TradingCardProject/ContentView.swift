//
//  ContentView.swift
//  TradingCardProject
//
//  Created by junxi Yim on 2024/1/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
                List{
                    NavigationLink(destination: Twistzz){
                        Navigation(CoverPhoto: "Twistzz", playerName: "Twistzz", Discription: "The Best Hair among all Players")
                            
                    }
                }
                .navigationTitle("The Legends of CSGO")
            
        }
        
    }
}

#Preview {
    ContentView()
}
