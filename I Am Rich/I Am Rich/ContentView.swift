//
//  ContentView.swift
//  I Am Rich
//
//  Created by irna fitriani on 31/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.systemTeal)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("I Am Rich")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                .fontWeight(.bold)
                Image("diamond")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 200, alignment: .center)

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
