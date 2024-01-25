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
                    Navigation(CoverPhoto: "Twistzz", playerName: "twistzz", Discription: "The Best Hair among all Players")
                }
                NavigationLink(destination: Rain){
                    Navigation(CoverPhoto: "raincs", playerName: "rain", Discription: "The Great leader, the King of an age")
                }
                NavigationLink(destination: Broky){
                    Navigation(CoverPhoto: "broky", playerName: "broky", Discription: "The young Blood of FaZe Clan, Top 10 in the world")
                }
                NavigationLink(destination: Ropz){
                    Navigation(CoverPhoto: "ropz", playerName: "ropz", Discription: "The Best Rifler in the Whole World")
                }
                NavigationLink(destination: Frozen){
                    Navigation(CoverPhoto: "FrozenImage", playerName: "FROZEN", Discription: "The one Who always Bring Miracles To the Competition")
                }
            }
                .navigationTitle("The Legends of CSGO")
            
            
        }
        
    }
}

#Preview {
    ContentView()
}
