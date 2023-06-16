//
//  CHButton.swift
//  ChatScreen
//
//  Created by Sudeb on 15/06/23.
//

import SwiftUI


struct SendButton : ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding([.leading, .trailing],15)
            .padding([.top, .bottom],6)
            .background(Color.clear)
            .foregroundColor(CHColors.buttonBlue)
            .font(.custom("Inter-Bold", size: 12))
            .overlay(
                RoundedRectangle(cornerRadius: 20)
                    .stroke(CHColors.buttonBlue, lineWidth: 1.6)
            )
    }
    
    
    
}
struct CHButton: View {
    var body: some View {
        Button("Send Now")
        {
            
        }
        .buttonStyle(SendButton())
    }
}

struct CHButton_Previews: PreviewProvider {
    static var previews: some View {
        CHButton()
    }
}
