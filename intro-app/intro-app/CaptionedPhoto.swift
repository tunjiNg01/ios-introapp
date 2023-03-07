//
//  CaptionedPhoto.swift
//  intro-app
//
//  Created by MACBOOK PRO on 07/03/2023.
//

import SwiftUI

struct CaptionedPhoto: View {
    let assetName: String;
    let captionText: String;
    var body: some View {
      
            Image(assetName)
                .resizable()
                .scaledToFit()
                .frame(width: 400, height: 400)
                .overlay(alignment: .bottom){
                    CaptionText(text:captionText)
                       
                }
       
    }
}

struct CaptionText: View {
    let text: String;
    var body: some View{
        Text(text)
            .padding()
            .background(Color(.white).opacity(0.75), in: RoundedRectangle(cornerRadius: 10.5, style: .circular))
            .padding(20)
    }
}

struct CaptionedPhoto_Previews: PreviewProvider {
    static var previews: some View {
        CaptionedPhoto(assetName: "tunjipic", captionText: "Hello, my name is tunji, I have bachelor ")
    }
}
