//
//  InfoView.swift
//  I Am Rich
//
//  Created by irna fitriani on 31/05/22.
//

import SwiftUI

struct InfoView: View {
    let imageName: String
    let text: String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(.white)
            .frame(height: 50)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(Color(red: 0.09, green: 0.63, blue: 0.52))
                Text(text)
                    .bold()
            })
            .padding(.all)
    }
}


struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(imageName: "phone.fill", text: "Hello").previewLayout(.sizeThatFits)
    }
}
