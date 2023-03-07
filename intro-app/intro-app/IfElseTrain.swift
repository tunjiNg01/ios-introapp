//
//  IfElseTrain.swift
//  intro-app
//
//  Created by MACBOOK PRO on 07/03/2023.
//

import SwiftUI

struct IfElseTrain: View {
    let ifLongTrain: Bool;
    var body: some View {
        HStack{
            Image(systemName: "train.side.rear.car")
                
      
                Image(systemName: "train.side.middle.car")
                    .opacity(ifLongTrain ? 1 : 0)
            
            Image(systemName: "train.side.rear.car")
        }
      
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct IfElseTrain_Previews: PreviewProvider {
    static var previews: some View {
        IfElseTrain(ifLongTrain: true)
        //IfElseTrain(ifLongTrain: false)
    }
}
