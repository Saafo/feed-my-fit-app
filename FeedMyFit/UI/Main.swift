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
        ZStack {
            Color("White")
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 0) {
                
                Text("Feed My Fit")
                    .font(Font.custom("Comfortaa-Bold", size: 51))
                    .foregroundColor(Color(red: 179/255, green: 216/255, blue: 174/255))
                    .frame(width: 309, height: 64, alignment: .center)
                    .padding(.top, 48)
                    .padding(.bottom, 17)
                
                ZStack{
                    RoundedRectangle(cornerRadius: 19)
                        .foregroundColor(Color("DBGColor"))
                        .shadow(color: Color("DBlackShadow"), radius: 10, x: 4, y: 4)
                        .shadow(color: .white, radius: 10, x: -4, y: -4)
                        .frame(width: 343, height: 443, alignment: .center)
                        .padding(.bottom, 27)
                
                }
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 19)
                    .foregroundColor(Color("DBGColor"))
                    .shadow(color: Color("DBlackShadow"), radius: 10, x: 4, y: 4)
                    .shadow(color: .white, radius: 10, x: -4, y: -4)
                    .frame(width: 374, height: 213, alignment: .center)
                    
                    VStack(spacing: 12){
                        
                        HStack(spacing: 45){
                            SubViewsForNutritions(centerImage: "", takeIn: 60, demond: 100)
                            SubViewsForNutritions(centerImage: "", takeIn: 60, demond: 100)
                            SubViewsForNutritions(centerImage: "", takeIn: 60, demond: 100)
                        }
                        HStack(spacing: 45){
                            SubViewsForNutritions(centerImage: "", takeIn: 60, demond: 100)
                            SubViewsForNutritions(centerImage: "", takeIn: 60, demond: 100)
                            
                        }
                    }
                }
            }
        }
    }
}

struct SubViewsForNutritions: View {
    
    var centerImage: String
    var takeIn: Int
    var demond: Int
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
             
            Image(centerImage)
                .frame(width: 53, height: 53, alignment: .center)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()

    }
}
