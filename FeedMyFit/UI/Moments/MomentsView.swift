//
//  MomentsView.swift
//  FeedMyFit
//
//  Created by mintsky on 2020/8/7.
//

import SwiftUI

struct MomentsView: View {
    var momentsData = [
        MomentInfo(pic: Image("Pic1"), content: "今日份的午餐，又是健康的一天，啦啦啦啦啦啦啦", userInfo: Publicinfo(Id: "11", Avatar: "Avatar1", Username: "硬核的半吨仙人", Sex: "Male", City: "成都", Streak: 17)),
        MomentInfo(pic: Image("Pic2"), content: "今日份的午餐，又是健康的一天，啦啦啦啦啦啦啦", userInfo: Publicinfo(Id: "11", Avatar: "Avatar1", Username: "硬核的半吨仙人", Sex: "Male", City: "成都", Streak: 17)),
        MomentInfo(pic: Image("Pic3"), content: "今日份的午餐，又是健康的一天，啦啦啦啦啦啦啦", userInfo: Publicinfo(Id: "11", Avatar: "Avatar1", Username: "硬核的半吨仙人", Sex: "Male", City: "成都", Streak: 17)),
        MomentInfo(pic: Image("Pic4"), content: "今日份的午餐，又是健康的一天，啦啦啦啦啦啦啦", userInfo: Publicinfo(Id: "11", Avatar: "Avatar1", Username: "硬核的半吨仙人", Sex: "Male", City: "成都", Streak: 17)),
        MomentInfo(pic: Image("Pic5"), content: "今日份的午餐，又是健康的一天，啦啦啦啦啦啦啦", userInfo: Publicinfo(Id: "11", Avatar: "Avatar1", Username: "硬核的半吨仙人", Sex: "Male", City: "成都", Streak: 17)),
        MomentInfo(pic: Image("Pic6"), content: "今日份的午餐，又是健康的一天，啦啦啦啦啦啦啦", userInfo: Publicinfo(Id: "11", Avatar: "Avatar1", Username: "硬核的半吨仙人", Sex: "Male", City: "成都", Streak: 17)),
        MomentInfo(pic: Image("Pic1"), content: "今日份的午餐，又是健康的一天，啦啦啦啦啦啦啦", userInfo: Publicinfo(Id: "11", Avatar: "Avatar1", Username: "硬核的半吨仙人", Sex: "Male", City: "成都", Streak: 17)),
        MomentInfo(pic: Image("Pic2"), content: "今日份的午餐，又是健康的一天，啦啦啦啦啦啦啦", userInfo: Publicinfo(Id: "11", Avatar: "Avatar1", Username: "硬核的半吨仙人", Sex: "Male", City: "成都", Streak: 17))
    ]
    var body: some View {
        ZStack{
            
            Color("DBGColor")
                .frame(width: W, height: H)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Text("广场")
                        .font(.largeTitle)
                        .bold()
                        .padding(.horizontal, 20)
                    Spacer()
                }
                .padding(.top, 25)
                ScrollView(showsIndicators: false) {
                    HStack(alignment: .top) {
                        LazyVStack {
                            ForEach(momentsData[0..<(momentsData.count/2)]) { item in
                                MomentCardView(momentInfo: item)
    //                            TestCardView(momentInfo: item)
                            }
                        }
                            .frame(width: 163)
                            .padding(.leading, 16)
                        Spacer()
                            .frame(maxWidth: 18)
                        LazyVStack {
                            ForEach(momentsData[(momentsData.count/2)...]) { item in
                                MomentCardView(momentInfo: item)
    //                            TestCardView(momentInfo: item)
                            }
                        }
                            .frame(width: 163)
                            .padding(.trailing, 16)
                    }
                    .frame(width: W)
                }
            }
        }
    }
}

struct MomentInfo: Identifiable { //动态基本信息
    var id = UUID()
    var pic: Image
    var content: String
    var userInfo: Publicinfo
//    var likeNum: Int // TODO here
    var liked: Bool = false
}

struct MomentCardView: View {
    let momentInfo: MomentInfo
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(Color("DBGColor"))
                .shadow(color: Color("DBlackShadow"), radius: 10, x: 4, y: 4)
                .shadow(color: Color("DWhiteShadow"), radius: 10, x: -4, y: -4)
            VStack {
                momentInfo.pic //动态图片
                Text(momentInfo.content)
                    .font(.subheadline)
                    .lineLimit(2)
                HStack(spacing: 0) {
                    Image(momentInfo.userInfo.Avatar!).resizable()
                        .frame(width: 22, height: 22)
                        .padding(.trailing, 5)
                    VStack(alignment: .leading) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 4)
                                .stroke(Color("SGreen-deep"), lineWidth: 1)
                            Text("坚持" + String(momentInfo.userInfo.Streak) + "天")
                                .font(.system(size: 8))
                                .foregroundColor(Color("SGreen-deep"))
                        }
                        .frame(width: 46, height: 12)
                        Text(momentInfo.userInfo.Username)
                            .font(.system(size: 10))
                            .lineLimit(1)
                    }
                    .padding(.trailing, 5)
                    Text("1.6k")
                        .font(.caption)
                        .padding(.trailing, 5)
                    momentInfo.liked ? Image(systemName: "heart.fill") : Image(systemName: "heart")
                }
                .padding(4)
                .foregroundColor(Color(UIColor.secondaryLabel))
            }
        }
        .frame(width: 163)
    }
}

struct TestCardView: View {
    let momentInfo: MomentInfo
    var body: some View {
        Rectangle()
            .foregroundColor(.blue)
            .padding(5)
            .frame(width: 163, height: 200, alignment: .center)
    }
}

struct MomentsView_Previews: PreviewProvider {
    static var previews: some View {
        MomentsView()
//        MomentCardView()
//            .previewLayout(.sizeThatFits)
    }
}
