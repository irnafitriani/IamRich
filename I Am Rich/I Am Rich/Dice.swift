//
//  Dice.swift
//  I Am Rich
//
//  Created by irna fitriani on 01/06/22.
//

import SwiftUI

struct Dice: View {
    
    @State var leftDiceNumber = 1
    @State var rightDiceNumber = 1
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .ignoresSafeArea(edges: .all)
            VStack {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(n: leftDiceNumber)
                    DiceView(n: rightDiceNumber)
                }
                .padding()
                Spacer()
                Button(action: {
                    self.leftDiceNumber = Int.random(in: 1...6)
                    self.rightDiceNumber = Int.random(in: 1...6)
                }) {
                    Text("Roll")
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                        .fontWeight(.heavy)
                        .padding(.horizontal)
                }
                .background(Color(.red))
            }
        }
    }
}


struct Dice_Previews: PreviewProvider {
    static var previews: some View {
        Dice()
    }
}

struct DiceView: View {
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}
