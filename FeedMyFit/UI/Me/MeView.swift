//
//  MeView.swift
//  FeedMyFit
//
//  Created by mintsky on 2020/7/15.
//

import SwiftUI
import SwiftUICharts

struct MeView: View {
    var username: String = "蒋冉冉"
    var signature: String = "每天都要元气满满！"
    var avatar: String = "Avatar1"
    var unreadMessagesCount: Int = 65
    var myCollectionsCount: Int = 38
    var lastWeekScore: [Double] = [70,50,40,70,50,80,98]
    var body: some View {
        ZStack {
            Color.init("DBGColor").edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 0) {
                HStack {
                    Text("我的")
                        .font(.largeTitle)
                        .bold()
                        .padding()
                    Spacer()
                }
                VStack {
                    HStack {
                        VStack {
                            SmallCardView(title: "消息中心", number: unreadMessagesCount, measureWord: "条", content: "未读消息", icon: "Bell", systemIcon: false, color: "SYellow", height: 121, dest: MeNotificationCenterView())
                                .padding(.bottom, 10)
                            SmallCardView(title: "我的收藏", number: myCollectionsCount, measureWord: "条", content: "收藏", icon: "Star", systemIcon: false, color: "SOrange", height: 121, dest: MeCollectionsView())
                        }
                        Spacer()
                        MediumCardView(title: "个人中心", username: username, content: signature, icon: avatar, height: 259, dest: MePersonalCenterView())
                    }
                }
                HStack {
                    BigCardView(title: "数据中心", highestScore: 99, streakDays: 16, recordDays: 74, scoreArray: lastWeekScore, color1: "SGreen", color2: "SGreen", height: 272, dest: MeDataCenterView())
                    VStack {
                        TinyCardView(title: "反馈客服", icon: "envelope", systemIcon: true, color: Color("SPurple"), height: 111, dest: MeFeedbackView())
                            .padding(.bottom, 10)
                        TinyCardView(title: "关于\nFeedMyFit", icon: "heart", systemIcon: true, color: Color("SRed"), height: 111, dest: MeFeedbackView())
                    }
                }
                .padding(.top, 17)
                Spacer()
                
            }
            .padding(.horizontal, 16.0)
            .padding(.top, 25)
        }
    }
}

struct BigCardView<destType: View>: View {
    var title: String
    var highestScore: Int
    var streakDays: Int
    var recordDays: Int
    var scoreArray: [Double]
    var color1: String
    var color2: String
    var height: Int
    var dest: destType
    var body: some View {
        let chartstyle = ChartStyle(backgroundColor: Color("DBGColor"), accentColor: Color.green, secondGradientColor: Color.green, textColor: Color.black, legendTextColor: Color("DGrey"), dropShadowColor: Color.clear)
        LineChartView(data: scoreArray, title: "数据中心", style: chartstyle)
            .shadow(color: Color(.white),radius: 5, x: -2, y: -2)
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),radius: 5,x: 2,y: 2)
    }
}

struct MediumCardView<destType: View>: View {
    var title: String
    var username: String
    var content: String
    var icon: String
    var height: Int
    var dest: destType
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(Color("DBGColor"))
                .shadow(color: Color(.white),radius: 5, x: -2, y: -2)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),radius: 5,x: 2,y: 2)
            VStack {
                HStack {
                    Image(icon).resizable()
                        .frame(width: 90, height: 90)
                        .scaledToFit()
                        .imageScale(.small)
                    Spacer()
                }
                .padding(.horizontal, 10)
                .padding(.bottom, 25)
                VStack(alignment: .leading) {
                    Text(title)
                        .bold()
                        .font(.title3)
                        .padding(.bottom, 15)
                    Text(username)
                        .foregroundColor(Color("DGrey"))
                        .font(.callout)
                        .padding(.bottom, 5)
                    Text(content)
                        .foregroundColor(Color("DGrey"))
                        .font(.callout)
                }
                .padding(.horizontal, 5)
            }
        }
        .frame(width: (UIScreen.main.bounds.size.width - 32) / 2 - 8, height: CGFloat(height))
    }
}

struct SmallCardView<destType: View>: View {
    var title: String
    var number: Int
    var measureWord: String
    var content: String
    var icon: String
    var systemIcon: Bool
    var color: String
    var height: Int
    var dest: destType
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(Color("DBGColor"))
                .shadow(color: Color(.white),radius: 5, x: -2, y: -2)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),radius: 5,x: 2,y: 2)
            VStack {
                HStack {
                    Text(title)
                        .bold()
                        .font(.title3)
                    Spacer()
                }
                HStack {
                    VStack(alignment: .leading) {
                        
                        HStack {
                            Text(String(number))
                                .foregroundColor(Color(color))
                                .font(.title)
                            Text(measureWord)
                            
                        }
                        Text(content)
                    }
                    Spacer()
                    if systemIcon {
                        Image(systemName: icon)
                            .frame(width: 50, height: 50)
                            .imageScale(.large)
                            .font(Font.title.weight(.regular))
                            .foregroundColor(Color(color))
                    }else{
                        Image(icon).resizable().scaledToFit()
                            .frame(width: 40, height: 40)
                            .padding(.trailing, 5)
                            .foregroundColor(Color(color))
                    }
                }
            }
            .padding(.leading, 12)
            .padding(.trailing, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
        .frame(width: (UIScreen.main.bounds.size.width - 32) / 2 - 8, height: CGFloat(height))
    }
}

struct TinyCardView<destType: View>: View {
    var title: String
    var icon: String
    var systemIcon: Bool
    var color: Color
    var height: Int
    var dest: destType
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(Color("DBGColor"))
                .shadow(color: Color(.white),radius: 5, x: -2, y: -2)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15),radius: 5,x: 2,y: 2)
            HStack {
                Text(title)
                    .bold()
                    .font(.headline)
                Spacer()
                if systemIcon {
                    Image(systemName: icon)
                        .frame(width: 50, height: 50)
                        .imageScale(.large)
                        .font(Font.title.weight(.regular))
                        .foregroundColor(color)
                }else{
                    Image(icon).resizable()
                        .frame(width: 40, height: 40)
                        .padding(.trailing, 5)
                        .foregroundColor(color)
                }
            }
            .padding(.leading, 12)
            .padding(.trailing, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        }
        .frame(width: (UIScreen.main.bounds.size.width - 32) / 2 - 8, height: CGFloat(height))
    }
}

struct MeView_Previews: PreviewProvider {
    static var previews: some View {
        MeView()
    }
}
