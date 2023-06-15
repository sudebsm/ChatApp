//
//  ChatModel.swift
//  ChatScreen
//
//  Created by Sudeb on 14/06/23.
//

import Foundation

struct UserChatListModel : Identifiable {
    var name : String
    var userImage : String
    var isSend : Bool
    let id: Int
    
    static func bestFriendPreview()-> [UserChatListModel] {
        return [UserChatListModel(name: "Allie", userImage: "demoAllie", isSend: true,id: 0),UserChatListModel(name: "Louis", userImage: "demoLouis", isSend: true, id: 1),UserChatListModel(name: "Aran", userImage: "demoAran", isSend: true , id: 2)]
    }
    
    static func recentPreview()-> [UserChatListModel] {
        return [UserChatListModel(name: "Tom", userImage: "demoTom", isSend: true , id: 3),UserChatListModel(name: "Jero", userImage: "demoJero", isSend: true , id: 4),UserChatListModel(name: "Lyndsey", userImage: "demoLyndsey", isSend: true , id: 5) , UserChatListModel(name: "Susie", userImage: "demoSusie", isSend: true , id: 6), UserChatListModel(name: "Jero", userImage: "demoJero", isSend: true , id: 7),UserChatListModel(name: "Lyndsey", userImage: "demoLyndsey", isSend: true , id: 8)]
    }
}
