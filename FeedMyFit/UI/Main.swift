//
//  Main.swift
//  FeedMyFit
//
//  Created by 祁汝鑫 on 2020/8/11.
//

import Foundation
import SwiftUI

struct MainView: View {

    var body: some View {
        VStack(spacing: 0) {
            TopViewsInMainViews()
            BottomViewsInMainViews()
        }
    }
}

struct SubViewsForNutritions: View {
    
    var centerImage: String
    var takeIn: Int
    var demond: Int
    var centerImageSize: CGFloat
    var body: some View {
        
        ZStack{
            
            RoundedRectangle(cornerRadius: 33)
                .foregroundColor(Color(red: 237/255, green: 237/255, blue: 237/255))
                .shadow(color: Color("DBlackShadow"), radius: 10, x: 4, y: 4)
                .shadow(color: .white, radius: 10, x: -4, y: -4)
                .frame(width: 66, height: 67, alignment: .center)
            
            RoundedRectangle(cornerRadius: 31)
                .foregroundColor(Color(red: 237/255, green: 237/255, blue: 237/255))
                .shadow(color: Color("DBlackShadow"), radius: 10, x: 4, y: 4)
                .shadow(color: .white, radius: 10, x: -4, y: -4)
                .frame(width: 62, height: 63, alignment: .center)
             
            Image(centerImage).resizable().scaledToFit()
                .frame(width: centerImageSize, height: centerImageSize, alignment: .center)
        }
    }
}

struct TopViewsInMainViews: View {
    var body: some View {
        
        Text("Feed My Fit")
            .font(Font.custom("Comfortaa Bold", size: 51))
            .foregroundColor(Color("SGreen-title"))
            .frame(width: 309, height: 64, alignment: .center)
            .padding(.top, 48)
            .padding(.bottom, 17)
        
        ZStack{
            
            Image("Background-1").resizable()
                .frame(width: 343, height: 443, alignment: .center)
                .cornerRadius(25)
                .shadow(color: Color("DBlackShadow"), radius: 10, x: 4, y: 4)
                .shadow(color: .white, radius: 10, x: -4, y: -4)
        }
        .padding(.bottom, 27)
    }
}

struct BottomViewsInMainViews: View {
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: 19)
            .foregroundColor(Color("DBGColor"))
            .shadow(color: Color("DBlackShadow"), radius: 10, x: 4, y: 4)
            .shadow(color: .white, radius: 10, x: -4, y: -4)
            .frame(width: 374, height: 213, alignment: .center)
            
            VStack(spacing: 12){
                
                HStack(spacing: 45){
                    SubViewsForNutritions(centerImage: "Pic-meat", takeIn: 60, demond: 100, centerImageSize: 53)
                    SubViewsForNutritions(centerImage: "Pic-calorie", takeIn: 60, demond: 100, centerImageSize: 43)
                    SubViewsForNutritions(centerImage: "Pic-fruit", takeIn: 60, demond: 100, centerImageSize: 42)
                }
                HStack(spacing: 45){
                    SubViewsForNutritions(centerImage: "Pic-protein", takeIn: 60, demond: 100, centerImageSize: 38)
                    SubViewsForNutritions(centerImage: "Pic-rice", takeIn: 60, demond: 100, centerImageSize: 39)
                    
                }
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()

    }
}
