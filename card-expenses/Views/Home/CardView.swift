//
//  CardView.swift
//  card-expenses
//
//  Created by Luciano Bohrer on 10/06/2020.
//  Copyright © 2020 Luciano Bohrer. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    var data: Card
    
    var body: some View {
        
        HStack(spacing: 20.0) {
            Image(self.data.image).resizable().frame(maxWidth: 45.0, maxHeight: 45.0)
                .padding(.leading, 12)
            
            VStack(alignment: .leading, spacing: 12) {
                HStack {
                    VStack(alignment: .leading) {
                        Text(self.data.marketplace)
                            .fontWeight(.regular)
                        
                        Text(self.data.date.string())
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    Text(String(format: "€ %.2f", self.data.amount))
                        .foregroundColor(self.data.type == Card.TypeCard.expense ? .red : .green )
                        .multilineTextAlignment(.trailing)
                }
            }
            
            Spacer(minLength: 0.0)
        }
    }
}

struct Card: Identifiable {
    let id: Int
    let image: String
    let marketplace: String
    let date: Date
    let amount: Double
    let type: TypeCard
    
    enum TypeCard {
        case expense
        case income
    }
}


var mock = [
    Card(id: 1, image: "expense-ic", marketplace: "Pingo Doce", date: Date(), amount: 12.9, type: .expense),
    Card(id: 2, image: "expense-ic", marketplace: "Continente", date: Date(), amount: 5.5, type: .expense),
    Card(id: 3, image: "expense-ic", marketplace: "Beneficio", date: Date(), amount: 160, type: .income),
    Card(id: 2, image: "expense-ic", marketplace: "Continente", date: Date(), amount: 15.5, type: .expense),
    Card(id: 2, image: "expense-ic", marketplace: "Continente", date: Date(), amount: 0.5, type: .expense),
    Card(id: 2, image: "expense-ic", marketplace: "Continente", date: Date(), amount: 4.5, type: .expense),
    Card(id: 2, image: "expense-ic", marketplace: "Continente", date: Date(), amount: 2.5, type: .expense)
]
