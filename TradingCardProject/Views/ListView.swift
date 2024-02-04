
//  ContentView.swift
//  TradingCardProject
//
//  Created by junxi Yim on 2024/1/21.


import SwiftUI

struct ListView: View {
    var body: some View {
        
        NavigationStack{
            List(allCards) { currentCard in
                
                NavigationLink {
                    DetailView(item: currentCard)
                } label: {
                    Navigation(item: currentCard)
                }
                
            }
            .navigationTitle("The Legends of CSGO")
        }
        
    }
}

#Preview {
    ListView()
}
