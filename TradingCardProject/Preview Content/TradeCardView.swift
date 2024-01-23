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
                    .frame(height:400)
                    .padding(.horizontal,20)
                    .padding(.top,70)
                
                
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
                        Text("""

    Xxxxxxxxxxxxxxxxxxxwasdjwalszd nwalwsadl asdiwajo gsajdow agshdj waosd gwasjd waosdgwasgvbfnf oawfwasd wasdjk waisdggowasjd waisgwoasdwasduwaskgv waosd guaskdwasodwasgasidwasdjwausfiwasdgwasndwaskdiwasudwasdiwasdjwagsdiwaksh iawjsduwaisdbwasdwi asidwajsdbwasgdw a was dwaisd wjas dwaosd kwasidwasdwaswaswasw jl adwjklwadjkl adklwkljadw kljadw jkladw jkl adljkadw jkladjkwl kljadw jkladw jkladw kjladw jkl adwjklad wlkjadw ljkadw jll jkadw kladw jkladw k jladw jkl adw klj adkl jadw kl ad wklj adw kl adw kl adw kl jadw kjl adw kjl adw  jkladw kjl adw kjl adw kljadw kjladw ioadw jiijadw ij adwohiugragfehuiphuiesfhuipaefhiousefhuipsEFiphuSEFhuiSEFhuipSEFiuphESFihuSEFipuhseiuhseseIOUHsEFIUGhiuoseFhiuesFiuhsEFihuESFhiuoEFOohiuESFShiu EFS iuhESF hiuEFShiuFSEiuESFHUefSHU FSE HUihuSEF hiuEFS ihuoSEF hiuosEF hiuosEF hiu ofsEhiu oEFSHIU SEFHIU esf hiuSEF hui SEFhuio SEF hu isEF hiousEF hioufs hiouzDF Huhiu DSFihuSF i uhsfe si husefhuifesshiusefHUIEFSH UESF HIOUSEF HIUef sihuofesiuh oSEF HIusEFHIU sEF  HUEFS HUEFS HUISEFH IOUhuOEFIS uhoi EFSHUIEFSHIUE FSHUIeFHSIU huie shuief hiuefs HIUsef HIUsef HIUseFI HUoesFHIU seFHIU EFSHiuESFHIUEFSHIU ESFI HUEFSHUI ESFIHU SEFHIU EFSIUh EFSiuh esFiuh sEFhiu efhiu efsIUHseFIUH sefihu esfhiu sefhiu sef  hiusef  hiusf ei uhsefhiu  sef iu hosefhiu  sefhiu  sefiu h sefiuh sefiuhsfehiuo sef  HIUosefHIU OsefIUH sefIU Hsefiuh FEiuh ESFihu sefihu fesiu fesiu FSEiu hfsEIUH SEFHIU sefIU HesfIUH sEFIUH efsIU HesFHIU esFiuh ofseiuh sefiuh sefihu esFiuh s EFIUh EFSSIUH EFS IUHesF IUHSEF IHUOefs IUHESFIHU SEF IU HESFIUH efsHUI sEFHUI esFIU H sefiuh  esFiuh  EFSiuh esFiuhefshiuefs hiuesf HIUesF IUHFS E
""")
                        
                        Spacer()
                    }
                    .foregroundColor(.white)
                }
                .ignoresSafeArea()
                .background{Image("blastbackground").resizable() .opacity(0.7) }
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
                
                HStack {
                    ZStack {
                        Image("fazelogo")
                            .resizable()
                            .frame(width: 90,height:65)
                        
                    }
                    Spacer()
                }
                Spacer()
            }
            .padding(.top,60)
            
        }
//        .padding(.bottom,25)
    }
    
}

#Preview {
    TradeCardView()
}
