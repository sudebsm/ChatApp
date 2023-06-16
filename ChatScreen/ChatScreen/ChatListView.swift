//
//  ChatListView.swift
//  ChatScreen
//
//  Created by Sudeb on 14/06/23.
//

import SwiftUI

struct ChatListView: View {
    
    @State private var bestFriendChatListArr = UserChatListModel.bestFriendPreview()
    @State private var recentChatListArr = UserChatListModel.recentPreview()
    
    init(){
        
        print("Screen Height")
        print(UIScreen.main.bounds.height)
        
        print("Bottom Height")
        print(CGFloat.bottomHeight)
        
        print("Screen Top Height")
        print(CGFloat.extimatedTopHeight)
        
        print("Cells")
        print(Int.friendsMaxCellNoD,Int.recentMaxCellNoD)

    }
    var body: some View {
        NavigationView {
            VStack {
                listView(bestFriendChatListArr: bestFriendChatListArr, recentChatListArr: recentChatListArr)
                Spacer()
                ChatControlOptionsView()
                PlayBackView()
            }
            .toolbar {
                Button {
                    
                } label: {
                    Image("cross")
                        .resizable()
                        .frame(width: 40,height: 40)
                }
            }
             .background(Color(red: 243.0/255.0, green: 243.0/255.0, blue: 243.0/255.0, opacity: 1))
             .navigationBarTitleDisplayMode(.inline)
        }
         .onAppear(){
            UINavigationBar.appearance().backgroundColor =  UIColor(Color(red: 243.0/255.0, green: 243.0/255.0, blue: 243.0/255.0, opacity: 1))
         }
        
    }
}



struct PlayBackView : View {
    
    var body: some View {
        
        VStack{
            ZStack {
                Rectangle()
                    .fill(Color.clear)
                    .frame(width: UIScreen.main.bounds.size.width - 20, height: 150)
                    .padding(0)
                    .background(Color(red: 206.0/255.0, green: 199.0/255.0, blue: 244.0/255.0, opacity: 1))
                    .cornerRadius(10.0)
                PlayBackControlsView()
            }
            
            ZStack {
                Rectangle()
                    .fill(Color.clear)
                    .frame(width: UIScreen.main.bounds.size.width, height: 50)
                    .background(Color(red: 157.0/255.0, green: 141.0/255.0, blue: 250.0/255.0, opacity: 1))
                
                HStack(alignment: .center) {
                    Text("Allie")
                        .padding(.leading, 40)
                        .foregroundColor(.white)
                        .font(.custom("Inter-Medium", size: 23.16))
                    Spacer()
                    Button {
                        
                    } label: {
                        Image("sendMessage")
                            .resizable()
                            .renderingMode(.original)
                            .frame(width: 25, height: 20)
                            .padding(.all,8)
                            .background(Circle().fill(Color.white))
                        
                    }
                    .padding(.trailing, 20)
                }
            }
        }
        .background(Color(red: 243.0/255.0, green: 243.0/255.0, blue: 243.0/255.0, opacity: 1))
    }
}


struct ChatControlOptionsView : View {
    
    var body: some View {
        HStack (alignment: .center) {
            
            Button {
                
            } label: {
                Image("advanced")
                    .resizable()
                    .cornerRadius(radius: UIScreen.main.bounds.size.height / 20, corners: [.topLeft,.topRight,.bottomLeft,.bottomRight])
                    .shadow(color: Color.gray, radius: 0.5, x: 0, y: 1)
            }
            .frame(width: UIScreen.main.bounds.size.width / 6,height: UIScreen.main.bounds.size.height / 20)

            
            Button {
                
            } label: {
                Image("smojis")
                    .resizable()
                    .cornerRadius(radius: UIScreen.main.bounds.size.height / 20, corners: [.topLeft,.topRight,.bottomLeft,.bottomRight])
                    .shadow(color: Color.gray, radius: 0.5, x: 0, y: 1)
            }
            .frame(width: UIScreen.main.bounds.size.width / 6,height: UIScreen.main.bounds.size.height / 20)

            
            Button {
                
            } label: {
                Image("background")
                    .resizable()
                    .cornerRadius(radius: UIScreen.main.bounds.size.height / 20, corners: [.topLeft,.topRight,.bottomLeft,.bottomRight])
                    .shadow(color: Color.gray, radius: 0.5, x: 0, y: 1)
            }
            .frame(width: UIScreen.main.bounds.size.width / 6,height: UIScreen.main.bounds.size.height / 20)

            
            Button {
                
            } label: {
                Image("scheduleTime")
                    .resizable()
                    .cornerRadius(radius: UIScreen.main.bounds.size.height / 20, corners: [.topLeft,.topRight,.bottomLeft,.bottomRight])
                    .shadow(color: Color.gray, radius: 0.5, x: 0, y: 1)
            }
            .frame(width: UIScreen.main.bounds.size.width / 6,height: UIScreen.main.bounds.size.height / 20)

            
            Button {
                
            } label: {
                Image("voice")
                    .resizable()
                    .cornerRadius(radius: UIScreen.main.bounds.size.height / 20, corners: [.topLeft,.topRight,.bottomLeft,.bottomRight])
                    .shadow(color: Color.gray, radius: 0.5, x: 0, y: 1)
            }
            .frame(width: UIScreen.main.bounds.size.width / 6,height: UIScreen.main.bounds.size.height / 20)

            
        }
        .frame(width: UIScreen.main.bounds.size.width)
        .background(Color(red: 243.0/255.0, green: 243.0/255.0, blue: 243.0/255.0, opacity: 1))
        
    }
}

struct PlayBackControlsView : View {
    
    var body: some View {
        VStack {
            ZStack {
                
                Rectangle()
                    .fill(Color.clear)
                    .frame(width: UIScreen.main.bounds.size.width - 50, height: 70)
                    .padding(0)
                    .background(.white)
                    .cornerRadius(35)
                
                HStack {
                    Button {
                        
                    } label: {
                        Image("redo")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.size.width / 12,height: UIScreen.main.bounds.size.width / 12)
                    }
                    .padding(.all, 10)
                    
                    Text("0:24")
                        .padding(.all, 10)
                        .font(.custom("Inter-Medium", size: 14.28))
                    
                    VStack (alignment: .center) {
                        Button {
                            
                        } label: {
                            Image("playButton")
                                .resizable()
                                .frame(width: UIScreen.main.bounds.size.width / 12,height: UIScreen.main.bounds.size.width / 12)
                        }
                        Text("Playback")
                            .foregroundColor(Color(red: 120.0/255.0, green: 67.0/255.0, blue: 241.0/255.0, opacity: 1))
                            .padding(.top, -5)
                            .font(.custom("Inter-Medium", size: 16))
                    }
                    
                    Button {
                        
                    } label: {
                        Image("musicFrame")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.size.width / 10,height: UIScreen.main.bounds.size.width / 10)
                    }
                    .padding(.leading, 10)
                    
                    Button {
                        
                    } label: {
                        Image("soundBar")
                            .resizable()
                            .frame(width: UIScreen.main.bounds.size.width / 10, height: 5)
                    }
                    .padding(.trailing, 10)
                }
            }
            
            
            Button {
                
            } label: {
                Image("dictation")
                    .resizable()
                    .frame(width: UIScreen.main.bounds.size.width / 8,height: UIScreen.main.bounds.size.width / 8)
            }
        }
    }
}



struct listView : View {
    var bestFriendChatListArr : [UserChatListModel]
    var recentChatListArr : [UserChatListModel]
    
    init(bestFriendChatListArr: [UserChatListModel] , recentChatListArr : [UserChatListModel] ) {
        self.bestFriendChatListArr = bestFriendChatListArr
        self.recentChatListArr = recentChatListArr
    }
    
    var body: some View {
        
        VStack (alignment: .leading) {
            Text("Best Friends")
                .padding([.top,.bottom], 7)
                .padding(.leading,20)
                .font(.custom("Inter-Bold", size: 15))
             List {
                 ForEach(bestFriendChatListArr.indices) { index in
                     let isFastIndex = (index == 0) ? true : false
                     let isLastIndex = (index == bestFriendChatListArr.count - 1) ? true :  false
                     ChatListCell(chatModel: bestFriendChatListArr[index],isFirstCell: isFastIndex, isLastCell: isLastIndex)
                         .frame(height:.listViewCellInnerHeight)
                 }
                .listRowSeparator(.hidden)
            }
            .cornerRadius(radius: 10, corners: [.topLeft,.topRight,.bottomLeft,.bottomRight])
            .padding([.leading,.trailing],20)
            .frame(height:((bestFriendChatListArr.count > Int.friendsMaxCellNoD) ? (.listViewCellHeight * CGFloat(Int.friendsMaxCellNoD)) : ((CGFloat(bestFriendChatListArr.count) * 1.0) * .listViewCellHeight) ))
            .listStyle(.plain)
            .shadow(color: Color.gray, radius: 0.5, x: 0, y: 1)
 
             
            
            Text("Recents")
                .font(.custom("Inter-Bold", size: 15))
                .padding([.top,.bottom],7)
                .padding(.leading,20)

            List {
                ForEach(recentChatListArr.indices) { index in
                    let isFastIndex = (index == 0) ? true : false
                    let isLastIndex = (index == recentChatListArr.count - 1) ? true :  false
                    ChatListCell(chatModel: recentChatListArr[index],isFirstCell: isFastIndex, isLastCell: isLastIndex)
                        .frame(height:.listViewCellInnerHeight)
                }
                .listRowSeparator(.hidden)
            }
            .cornerRadius(radius: 10, corners: [.topLeft,.topRight,.bottomLeft,.bottomRight])
            .shadow(color: Color.gray, radius: 0.5, x: 0, y: 1)
            .padding([.leading,.trailing],20)
            .listStyle(.plain)
            .frame(height:((recentChatListArr.count > Int.recentMaxCellNoD) ? (.listViewCellHeight * CGFloat(Int.recentMaxCellNoD)) : ((CGFloat(recentChatListArr.count) * 1.0) * .listViewCellHeight) ))
        }
        .onAppear(){
            UITableView.appearance().bounces = false
            UITableView.appearance().backgroundColor = UIColor(red: 243.0/255.0, green: 243.0/255.0, blue: 243.0/255.0, alpha: 1)
        }
    }
}

struct ChatListView_Previews: PreviewProvider {
    static var previews: some View {
        ChatListView()
    }
}


extension CGFloat {
    
    static let bottomHeight = (UIScreen.main.bounds.size.height / 20) + 200 + 50
    static let extimatedTopHeight = UIScreen.main.bounds.size.height - bottomHeight
    static let listViewCellHeight =  59.0
    static let listViewCellInnerHeight =  37.0

}

extension Int {
    static let remainingTopHeight = Int(CGFloat.extimatedTopHeight - 100)
    static let recentMaxCellNo = 4
    static let friendsMaxCellNo = 3
    
    static let recentMaxCellNoD = Int(Double.recentMaxCellNo1)
    static let friendsMaxCellNoD = Int(Double.friendsMaxCellNo1)

}

extension Double {
    static let estimatedTotCells = Double(.remainingTopHeight/(Int(CGFloat.listViewCellHeight) + 5))
    static let friendsMaxCellNo1 = floor((estimatedTotCells/2.0))
    static let recentMaxCellNo1 = floor(estimatedTotCells - friendsMaxCellNo1)
}
