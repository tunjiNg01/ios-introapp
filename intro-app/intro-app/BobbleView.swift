//
//  BobbleView.swift
//  intro-app
//
//  Created by MACBOOK PRO on 03/03/2023.
//

import SwiftUI

struct BobbleView: View {
    let Keywood: String;
    let Symbol: String;
    @ScaledMetric( relativeTo: .title) var paddingThickness = 14.5;
    var body: some View {
       Label(Keywood, systemImage: Symbol)
            
            .font(.title)
            .foregroundColor(.white)
            .padding(paddingThickness)
            .background(.blue.opacity(0.75), in: Capsule())
    }
}

struct BobbleView_Previews: PreviewProvider {
    static let keywords = ["Chives", "Fern-leaf lavender"]
    static var previews: some View {
        VStack{
            ForEach(keywords, id: \.self){
                word in BobbleView(Keywood: word, Symbol: "leaf")
            }
        }
       
    }
}
