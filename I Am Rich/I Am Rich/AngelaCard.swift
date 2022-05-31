//
//  AngelaCard.swift
//  I Am Rich
//
//  Created by irna fitriani on 31/05/22.
//

import SwiftUI

struct AngelaCard: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52, opacity: 1.00)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("angela")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle().stroke().stroke(Color.white, lineWidth: 5.0))
                Text("Angela Yu")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .foregroundColor(.white)
                .bold()
                Text("iOS Developer")
                    .font(Font.system(size: 25))
                    .foregroundColor(.white)
                Divider()
                InfoView(imageName: "phone.fill", text: "+44 123 456 789")
                InfoView(imageName: "envelope.fill", text: "angela@mail.com")
            }
        }
    }
}

struct AngelaCard_Previews: PreviewProvider {
    static var previews: some View {
        AngelaCard()
    }
}
