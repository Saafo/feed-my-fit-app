//
//  MeDataCenter.swift
//  FeedMyFit
//
//  Created by mintsky on 2020/7/16.
//

import SwiftUI

struct MeDataCenterView: View {
    var title: String = "数据中心"
    var highestScore: Int = 99
    var streakDays: Int = 16
    var recordDays: Int = 74
    var scoreDict: [String:Int] = ["9/20":70,"9/21":30,"9/22":40,"9/23":70,"9/24":50,"9/25":30,"9/26":98]
    var color1: String = "SGreen"
    var color2: String = "SGreen"
    var height: Int = 272
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(Color("DBGColor"))
                .shadow(color: Color("DWhiteShadow"),radius: 5, x: -2, y: -2)
                .shadow(color: Color("DBlackShadow"),radius: 5,x: 2,y: 2)
            VStack {
                HStack {
                    Text(title)
                        .font(.title3)
                        .bold()
                    Spacer()
                }
                .padding(.horizontal, 16)
                HStack {
                    VStack {
                        Text("最高分数")
                        HStack {
                            Text(String(highestScore))
                            Text("分")
                        }
                    }
                    VStack {
                        Text("连击天数")
                        HStack {
                            Text(String(streakDays))
                            Text("天")
                        }
                    }
                }
                Text("共坚持记录\(recordDays)天")
            }
        }
    }
}

struct MeDataCenterView_Previews: PreviewProvider {
    static var previews: some View {
        MeDataCenterView()
    }
}
