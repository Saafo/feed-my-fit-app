//
//  RankListView.swift
//  FeedMyFit
//
//  Created by mintsky on 2020/7/16.
//

import SwiftUI

struct RankListView: View {
    @State var listChoioce = 0
    var ranklists = ["健康值排行", "坚持记录排行"]
    var list = [
        UserRank(id: 4, username: "薛浍人", avatar: "Avatar5", score: 96, rank: 4),
        UserRank(id: 5, username: "段苹苹", avatar: "Avatar6", score: 96, rank: 5),
        UserRank(id: 6, username: "唐可可", avatar: "Avatar7", score: 94, rank: 6),
        UserRank(id: 7, username: "史萌", avatar: "Avatar8", score: 93, rank: 7)
    ]
    var body: some View {
        ZStack {
            Color.init("DBGColor").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                HStack {
                    Text("排行榜")
                        .font(.largeTitle)
                        .bold()
                        .padding(.horizontal, 20)
                    Spacer()
                }
                .padding(.top, 80)
                Picker("RankLists", selection: $listChoioce) {
                    ForEach(0 ..< ranklists.count) { index in
                        Text(self.ranklists[index])
                    }

                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal, 40)
                HStack {
                    OnStageView(avatar: "Avatar3", medal: "MedalSilver", username: "方笔笔")
                        .padding(.top, 20)
                    OnStageView(avatar: "Avatar2", medal: "MedalGold", username: "许遄侠")
                    OnStageView(avatar: "Avatar4", medal: "MedalCopper", username: "丁彤")
                        .padding(.top, 20)
                }
                StageView(score1: 100, score2: 99, score3: 97)
                    .offset(y: -15)
                ListView(list: list)
                    .offset(y: -50)
            }
        }
    }
}

struct UserRank: Identifiable {
    var id: Int
    var username: String
    var avatar: String
    var score: Int
    var rank: Int
}

struct ListItemView: View {
    let isSelf: Bool
    let avatar: String
    let username: String
    let score: Int
    let rank: Int
    var body: some View {
        HStack {
            Image(avatar).resizable()
                .frame(width: 50, height: 50)
                .padding(.horizontal, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading) {
                isSelf ?
                    Text("\(username)（我）")
                    .font(.subheadline)
                    :
                    Text(username)
                    .font(.subheadline)
                Text(String(score))
                    .font(.subheadline)
            }
            Spacer()
            ZStack {
                Circle()
                    .foregroundColor(Color("SGreen"))
                    .frame(width: 50, height: 50)
                    .shadow(color: Color(.white),radius: 8, x: -4, y: -4)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),radius: 8,x: 4,y: 4)
                Text(String(rank))
                    .fontWeight(.semibold)
            }
        }
        .frame(height: 44)
        .padding(.horizontal, 25)
        .padding(.vertical, 10)
    }
}

struct ListView: View {
    var list: [UserRank]
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 38)
                .foregroundColor(Color("SGreen"))
            VStack {
                ListItemView(isSelf: true, avatar: "Avatar1", username: "蒋冉冉", score: 76, rank: 206)
                ForEach(list) { item in
                    ListItemView(isSelf: false, avatar: item.avatar, username: item.username, score: item.score, rank: item.rank)
                }
            }
        }
    }
}

struct OnStageView: View {
    let avatar: String
    let medal: String
    let username: String
    var body: some View {
        VStack(spacing: 0) {
            Image(avatar).resizable()
                .frame(width: 50, height: 50)
            Image(medal).resizable()
                .frame(width: 30, height: 40)
                .offset(y: -5)
            Text(username)
                .font(.subheadline)
        }
        .padding(.horizontal, 10)
    }
}

struct StageView: View {
    let score1: Int
    let score2: Int
    let score3: Int
    var body: some View {
        ZStack {
            Image("RankStage")
            HStack {
                Text(String(score2))
                    .font(Font.custom("League Gothic", size: 44))
                    .padding(.horizontal, 24)
                Text(String(score1))
                    .font(Font.custom("League Gothic", size: 44))
                    .padding(.horizontal, 24)
                    .offset(y: -10)
                Text(String(score3))
                    .font(Font.custom("League Gothic", size: 44))
                    .padding(.horizontal, 24)
            }
            .offset(y: -5)
        }
    }
}

struct RankListView_Previews: PreviewProvider {
    static var previews: some View {
        RankListView()
//        ListItemView(isSelf: true, avatar: "Avatar1", username: "蒋冉冉", score: 76, rank: 206)
    }
}
