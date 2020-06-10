//
//  HomeView.swift
//  card-expenses
//
//  Created by Luciano Bohrer on 10/06/2020.
//  Copyright © 2020 Luciano Bohrer. All rights reserved.
//

import SwiftUI

struct Home: View {
    
    @State private var timer = Timer.publish(every: 0.1, on: .current, in: .tracking).autoconnect()
    
    private let headerHeight = UIScreen.main.bounds.height / 2.2
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack {
                
                // Strechy Header
                GeometryReader { g in
                    ZStack {
                        Image("bg-img")
                        .resizable()
                            .offset(y: g.frame(in: .global).minY > 0 ? -g.frame(in: .global).minY : 0)
                        .frame(height: g.frame(in: .global).minY > 0 ? self.headerHeight + g.frame(in: .global).minY: self.headerHeight)
                            .onReceive(self.timer) { (_) in

                                let y = g.frame(in: .global).minY
                                
                                if -y > self.headerHeight - 50 {
                                    print("hello")
                                }
                            }

                        VStack(alignment: .center, spacing: 12) {
                            Text("amount_available".localized).fontWeight(.light).colorInvert()
                            Text("€ 120,00").fontWeight(.light).colorInvert().font(.system(size: 60))
                        }
                    }
                }
                .frame(height: self.headerHeight)
                
                VStack {
                    Text("home_title".localized)
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
                        .padding(.leading, 20)
                    
                    // Data
                    ForEach(mock) { (card)  in
                        CardView(data: card)
                    }
                }
                .padding()
                
                Spacer()
            }
        })
        .edgesIgnoringSafeArea(.top)
    }
}

