//
//  ContentView.swift
//  intro-app
//
//  Created by MACBOOK PRO on 23/02/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack{
                Image(systemName: "folder.badge.plus")
                Image(systemName: "heart.circle.fill")
                Image(systemName: "alarm")
            }
            .symbolRenderingMode(.multicolor)
            .font(.largeTitle)
            Spacer()
            Label("Favourite Book", systemImage:"books.vertical" )
                .labelStyle(.titleAndIcon)
                .font(.body)
            Spacer()
            Image("tunjipic")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
            HStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                
                Text("Hello, Tunji!")
                    .foregroundColor(Color.white)
            }
            .padding()
            .background(Color.primary, in: Capsule())
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
