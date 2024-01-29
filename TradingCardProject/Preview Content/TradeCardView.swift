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
    let PlayerTeamLogo:String
    let PlayerSignatureLogo:String
    let PlayerImage:String
    
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
                    ZStack{
                        Rectangle()
                            .fill(.white)
                            
                        Image("fzbackground")
                            .resizable()
                            .frame(height:400)
                            .padding(.horizontal,10)
                        Image(PlayerImage)
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
                
                
                
                
                
                
                
                
                VStack {
                    HStack {
                        Image(PlayerTeamLogo)
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
                    
                    Image(PlayerSignatureLogo)
                        .resizable()
                        .frame(width:100,height:65)
                    
                    
                    
                }
                .offset(x:100,y:-200)
                
            }
            .navigationTitle("")
            .navigationBarTitleDisplayMode(.inline)
            
        }
}

let Twistzz = TradeCardView(Age: 24, KPR: 0.68, Surviving: "37%", ADR: 74.3, Impact: 1.03, KAST: "73.7%", Rating: 1.10, PlayName: "Russel \"Twistzz\" Van Dulken", PlayerIntroduction: """
Twistzz was a reliable performer with solid numbers from an exceptionally large sample, in addition to frequent peaks, as illustrated by his high percentage of maps (31%) with 1.30+ ratings. He was also among the most consistent players round-to-round in the scene, with his 73.7% KAST ranking him 15th in the Top 20.
                  
One particular aspect in which Twistzz stood out was his incredible trade ability. He ranked fifth for trades involved per round (0.30), ninth for trade kills per round (0.16) and 11th for percentage of deaths traded (23.6%), putting him as one of the best traders on both sides. This is best evidenced by the fact that he had the second-most trade kills per round win in the entire Top 20 at 0.18.

“I’m happy to be on this list again but disappointed with the individual year I had. I’m not a player to chase these individual awards as I believe they are a side-effect to playing good CS as a team and when you do your role well within a team exceptionally well. I look forward to my years with Liquid and seeing how far I can push my level. I know Casper (cadiaN), Wilton (zews) and the rest of the supporting staff will help me with that push."
""",PlayerTeamLogo: "fazelogo",PlayerSignatureLogo: "twistzzSticker", PlayerImage: "Twistzz")

let Rain = TradeCardView(Age: 29, KPR: 0.71, Surviving: "31%", ADR: 79.6, Impact: 1.16, KAST: "69.9", Rating: 1.02, PlayName: "Håvard \"rain\" Nygaard", PlayerIntroduction: """
Though whilst rain performed admirably, the roster failed to repeat success, leading to more team changes until the team eventually ended up with what many considered the most talent dense team to date.[12] Whilst this team had early success, with two back to back flawless victories at the ELEAGUE CS:GO Premier 2017 and ESL One New York 2017,[14] the team did not manage to find consistency and was largely considered relatively dysfunctional following a 2nd-place finish at the 2018 Boston ELEAGUE Major.

Whilst rain's performance got him several accolades in 2017 and 2018, since then his personal level had declined with that of his team, and both his and his team's performance was hit or miss as the team tried out several different players in an attempt to complete the roster. This process is still ongoing come November 2019, where the most recent additions have revitalized the team somewhat despite rain's personal level being somewhat below average since May.
""", PlayerTeamLogo: "fazelogo", PlayerSignatureLogo: "rainSticker", PlayerImage: "raincs")

let Broky = TradeCardView(Age: 22, KPR: 0.73, Surviving: "39%", ADR: 73.9, Impact: 1.04, KAST: "74.0%", Rating: 1.13, PlayName:" Helvijs \"⁠broky\" Saukants", PlayerIntroduction: """
broky was a key cog behind FaZe’s peaks this term, and his total of five EVPs, two of which came at elite events, is the joint second-highest in the top 20. He also came second in two MVP races, at IEM Sydney and online for the Thunderpick World Championship, which left him with a strong set of awards in both quality and quantity compared to those below.
Deadpan as ever, broky was aiming for higher: "I think placing top 10 was too low for me. I expected top 1, but there is always a possibility next year."

Like in previous years, he continued to excel in the late round with 67 1vsX clutches (3rd) and was an exceptional trade fragger (0.16 trade kills per round, 11th) to give himself the best possible chance in late-round scenarios.
broky also maintained a 1.10 rating against top 10 teams (13th) across a huge sample size of 94 maps, nearly double the average count for top 20 players, and stepped up at Elite events with a 1.13 average.
Where the Latvian fell behind was by having fairly low Impact (1.04, 18th in the top 20), a T rating of 1.06, (17th in the top20), and lower overall ratings against high-ranked opposition compared to most of the high-flying players above him. His floor also deserted him on occasion, having weak events by his standards at IEM Rio, IEM Cologne, Gamers8, and CS Asia Championships.
""", PlayerTeamLogo: "fazelogo", PlayerSignatureLogo: "brokySticker", PlayerImage: "broky")

let Ropz = TradeCardView(Age: 24, KPR: 0.75, Surviving: "39%", ADR: 80.0, Impact: 1.23, KAST: "73.2%", Rating: 1.17, PlayName: "Robin \"⁠ropz⁠\" Kool", PlayerIntroduction: """
ropz broke into the top three for the first time in his career thanks to his exceptional stats in elite tournaments and against top-level opposition from the biggest sample size out of anyone. He ended the year with three MVP awards (only behind Mathieu "⁠ZywOo⁠" Herbaut’s five medals) and four EVP accolades.
"I guess I do feel it was my best year yet individually. I say that without looking at stats or results but just looking back at how I approached the game, which moves and plays I was going for, how I was communicating, and what kind of initiative and duels I would take.
"I felt I could truly challenge anyone on the server and come out on top. I don’t normally say that since I’m not a fan of fake confidence and just throwing words around. You could say I’m in my prime years now, having a perfect balance of talent, experience and hard work. Also having the right team and people around you."
The Estonian was the definition of a big-game player, someone who stepped up in the toughest of conditions and against the hardest of opponents. His 1.25 Big Match rating was a significant improvement on his year average of 1.17 and the second-best overall, only a sliver behind ZywOo’s 1.26.
Despite ropz being the second-most decorated player of 2023, two of his MVP awards are branded with asterisks. They came at the smallest events in consideration for the ranking (Thunderpick World Championship and CS Asia Championships) and make him look a bit inflated in terms of individual honors when compared to the rest of the top five.
But even still, there is no denying the incredible year that ropz had. He was only surpassed by Nikola "⁠NiKo⁠" Kovač , who had a generally massive impact and better stats at Super Elite-level events, and ZywOo, who was simply ahead of everyone else.
"I am getting to my prime years now. I’ve been hard working my whole career and even though my goal is to win tournaments, during that process you can become one of the best. So it’s a great side achievement and can make the players' confidence even stronger. After all, in my eyes, CS is a game of confidence. Many people are capable of doing such great things, but if you always believe in yourself, if you are full of confidence, have the talent and work to back it up, chances are you might become one of the best."
Quizzed about his goals for 2024, ropz said: \"To peak at the biggest tournaments and win a Major.\"
""", PlayerTeamLogo: "fazelogo", PlayerSignatureLogo: "ropzSticker", PlayerImage: "ropz")

let Frozen = TradeCardView(Age: 21, KPR: 0.72, Surviving: "42%", ADR: 80.8, Impact: 1.11, KAST: "75.3%", Rating: 1.19, PlayName: "David \"⁠frozen⁠\" Čerňanský", PlayerIntroduction: """
With excellent stats such as a 1.19 average rating, nearly the same at Big Events (1.18), 80.8 ADR, and 0.58 deaths per round, frozen belonged to one of the best players of the year when it comes to raw numbers. He earned these in large part thanks to his incredible consistency throughout 2023 from every aspect possible, from round to round with a superb 75.3% KAST (#5), map to map with 79% maps rated above 1.00 (#3), and tournament to tournament with just one below-average event and the other 13 rated above 1.08.

He also replicated these sorts of numbers against the best competition with a 1.18 rating against top 10 teams (#6) and kept up a high level deep into tournaments with a 1.14 rating in Big matches (#12), which also allowed him to grab four EVP awards — two at big events (IEM Dallas and ESL Pro League Season 18) and two at medium events (Thunderpick World Championship and CS Asia Championships).

To earn a higher placing that would match some of the raw numbers he would have needed more peaks at the year's biggest events, as only two of his EVPs came at the Big Events, and none at the Elites. His relatively low KPR (0.72, #16) in combination with a high saving percentage (14% of lost rounds, #4 in the top 20) also go on to show his ratings came in a significant part through his survival rather than more direct impact.

\"It feels great that I've made it to the list again but just looking at the last season, there is still so much room for me to improve on,\" said frozen about his year that ended with a transfer to FaZe.

\"Every decision in my career was made by me so far and I felt like a change was needed, new challenges and obstacles were something that I was looking for in order to get to the level I want to be at.\"
""", PlayerTeamLogo: "Mouz Logo", PlayerSignatureLogo: "FROZEN", PlayerImage: "FrozenImage")


#Preview {
    Twistzz
}
#Preview {
    Rain
}
#Preview {
    Broky
}
#Preview {
    Ropz
}
#Preview {
    Frozen
}
