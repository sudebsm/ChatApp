//
//  ChatListCell.swift
//  ChatScreen
//
//  Created by Sudeb on 15/06/23.
//

import SwiftUI

struct ChatListCell: View {
    
    var chatModel : UserChatListModel
    var isFirstCell : Bool = false
    var isLastCell : Bool = false

    var body: some View {
        VStack {
            HStack{
                Image(chatModel.userImage)
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.white)
                    .background(Color.clear)
                    .overlay(
                        Circle()
                            .stroke(.clear, lineWidth: 1))
                    .padding(.leading,UIScreen.main.bounds.width/20)
                
                Text(chatModel.name)
                    .font(.custom("Inter-Medium", size: 20))
                    .foregroundColor(CHColors.titleColor)
                Spacer()
                
                Button("Send Now")
                {
                    
                }
                .buttonStyle(SendButton())
                .padding(.trailing,UIScreen.main.bounds.width/20)
            }
        }
    }
}

struct ChatListCell_Previews: PreviewProvider {
    static var previews: some View {
        ChatListCell(chatModel:UserChatListModel(name: "Louis", userImage: "demoLouis", isSend: true, id: 1))
    }
}
