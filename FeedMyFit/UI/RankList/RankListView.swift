//
//  RankListView.swift
//  FeedMyFit
//
//  Created by mintsky on 2020/7/16.
//

import SwiftUI

struct RankListView: View {
    @State var listChoioce = 0
    let ranklists = ["健康值排行", "坚持记录排行"] // Picker标题
    let healthyData: [String: [UserRank]] = [ // 健康值排行数据
        "Stage": [
            UserRank(id: 1, username: "许遄侠", avatar: "Avatar2", score: 100, rank: 1),
            UserRank(id: 2, username: "方笔笔", avatar: "Avatar3", score: 99, rank: 2),
            UserRank(id: 3, username: "丁彤", avatar: "Avatar4", score: 97, rank: 3)
        ],//一定要按1 2 3的list顺序排！
        "Me": [
            UserRank(id: 0, username: "蒋冉冉", avatar: "Avatar1", score: 94, rank: 6)
        ],
        "List": [
            UserRank(id: 4, username: "薛浍人", avatar: "Avatar5", score: 96, rank: 4),
            UserRank(id: 5, username: "段苹苹", avatar: "Avatar6", score: 96, rank: 5),
            UserRank(id: 6, username: "唐可可", avatar: "Avatar7", score: 94, rank: 6),
            UserRank(id: 7, username: "史萌", avatar: "Avatar8", score: 93, rank: 7),
            UserRank(id: 4, username: "薛浍人", avatar: "Avatar5", score: 96, rank: 8),
            UserRank(id: 5, username: "段苹苹", avatar: "Avatar6", score: 96, rank: 9),
            UserRank(id: 6, username: "唐可可", avatar: "Avatar7", score: 94, rank: 10),
            UserRank(id: 7, username: "史萌", avatar: "Avatar8", score: 93, rank: 11)
        ]
    ]
    var body: some View {
        ZStack {
            Color.init("DBGColor").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color("DGrey"))
                    .frame(width: 87, height: 4, alignment: .center)
                    .padding(.top, 10)
                HStack {
                    Text("排行榜")
                        .font(.largeTitle)
                        .bold()
                        .padding(.horizontal, 20)
                    Spacer()
                }
                Picker("RankLists", selection: $listChoioce) {
                    ForEach(0 ..< ranklists.count) { index in
                        Text(self.ranklists[index])
                    }

                }
                .pickerStyle(SegmentedPickerStyle())
                .padding(.horizontal, 40)
                StageView(stageData: healthyData["Stage"]!) //领奖台
                ListView(me: healthyData["Me"]![0], list: healthyData["List"]!)
                    .offset(y: -50) //列表
            }
        }
    }
}

struct UserRank: Identifiable { //用户排名信息
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
                .frame(width: 44, height: 44)
                .padding(.trailing, 10)
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
                    .frame(width: 40, height: 40)
                    .shadow(color: Color("DWhiteShadow"),radius: 8, x: -4, y: -4)
                    .shadow(color: Color("DBlackShadow"),radius: 8,x: 4,y: 4)
                Text(String(rank))
                    .fontWeight(.semibold)
            }
        }
        .frame(height: 44)
        .padding(.horizontal, 25)
        .padding(.vertical, 5)
    }
}

struct ListView: View {
    var me: UserRank
    var list: [UserRank]
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 38)
                .foregroundColor(Color("SGreen"))
            VStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(Color("DGrey"))
                    .frame(width: 61, height: 4, alignment: .center)
                    .padding(.top, 10)
                ScrollView(showsIndicators: false) {
                    ListItemView(isSelf: true, avatar: me.avatar, username: me.username, score: me.score, rank: me.rank)
                    Rectangle()
                        .foregroundColor(Color("SGreen-deep"))
                        .frame(width: 293, height: 1, alignment: .center)
                    ForEach(list) { item in
                        ListItemView(isSelf: false, avatar: item.avatar, username: item.username, score: item.score, rank: item.rank)
                    }
                }
                .frame(height: 320)
            }
        }
        .padding(.horizontal, 16)
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
    let stageData: [UserRank]
    var body: some View {
        HStack {
            OnStageView(avatar: stageData[1].avatar, medal: "MedalSilver", username: stageData[1].username)
                .padding(.top, 20)
            OnStageView(avatar: stageData[0].avatar, medal: "MedalGold", username: stageData[0].username)
            OnStageView(avatar: stageData[2].avatar, medal: "MedalCopper", username: stageData[2].username)
                .padding(.top, 20)
        }
        ZStack {
            Image("RankStage")
            HStack {
                Text(String(stageData[1].score))
                    .font(Font.custom("League Gothic", size: 44))
                    .padding(.horizontal, 24)
                Text(String(stageData[0].score))
                    .font(Font.custom("League Gothic", size: 44))
                    .padding(.horizontal, 24)
                    .offset(y: -10)
                Text(String(stageData[2].score))
                    .font(Font.custom("League Gothic", size: 44))
                    .padding(.horizontal, 24)
            }
            .offset(y: -5)
        }
            .offset(y: -15)
    }
}

struct RankListView_Previews: PreviewProvider {
    static var previews: some View {
        RankListView()
            .padding(.top, 50)
    }
}
