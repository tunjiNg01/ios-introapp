//
//  AdaptableViews.swift
//  intro-app
//
//  Created by MACBOOK PRO on 07/03/2023.
//

import SwiftUI

struct Event {
    let title: String;
    let date: Date;
    let location:String;
    let symbol: String;
}
struct AdaptableViews: View {
    let event: Event;
    let stripeHeight = 10.4;
    var body: some View {
        HStack(alignment: .firstTextBaseline){
            Image(systemName: event.symbol)
                .font(.title)
            VStack(alignment: .leading){
                Text(event.title)
                    .font(.title)
                Text(event.date, format: Date.FormatStyle()
                    .day(.defaultDigits)
                    .month(.wide))
                Text(event.location)
                
            }
        }
        .padding()
        .padding(.top, stripeHeight)
                .background {
                    ZStack(alignment: .top) {
                        Rectangle()
                            .opacity(0.3)
                        Rectangle()
                            .frame(maxHeight: stripeHeight)
                    }
                    .foregroundColor(.green)
                }
                .clipShape(RoundedRectangle(cornerRadius: stripeHeight, style: .continuous))
              
    }
}

struct AdaptableViews_Previews: PreviewProvider {
    static let event = Event(title: "Buy Daisies ", date: .now, location: "Flower Shop", symbol: "gift")
    static var previews: some View {
        AdaptableViews(event: event)
    }
}
