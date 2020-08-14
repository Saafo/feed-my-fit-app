//
//  CameraResultView.swift
//  FeedMyFit
//
//  Created by 祁汝鑫 on 2020/8/14.
//

import Foundation
import SwiftUI

struct CameraResultView: View {
    var body: some View {
        
        ZStack{
            
            RoundedRectangle(cornerRadius: 19)
                .frame(width: W, height: 731, alignment: .center)
                .foregroundColor(Color(red: 70/255, green: 70/255, blue: 70/255, opacity:0.5))
            
            VStack(spacing: 0){
                
                
                RoundedRectangle(cornerRadius: 19)
                    .frame(width: 88, height: 2, alignment: .center)
                    .foregroundColor(.black)
                
                Spacer().frame(height: 80)
                
                Image("MeatBall")
                
                HStack(spacing: 0){
                    
                    VStack(spacing: 0){
                        
                        Text("肉丸").font(Font.system(size: 41)).foregroundColor(.white).padding(.trailing, 32)
                        
                        Spacer().frame(height: 42)
                        
                        Text("我只吃：").font(Font.system(size: 27)).foregroundColor(.white).frame(alignment: .leading)
                    
                    }
                    
                    
                    Spacer().frame(width: 125)
                    
                    RoundedRectangle(cornerRadius: 7)
                        .frame(width: 117, height: 108, alignment: .center)
                        
                        .shadow(color: Color(red: 1, green: 1, blue: 1, opacity: 0.19), radius: 10, x: 2, y: 2)
                        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.2), radius: 10, x: -2, y: -2)
                    
                        .foregroundColor(Color(red: 1, green: 1, blue: 1, opacity: 0))
                
                }
                
                Spacer().frame(height: 13)
                
                HStack(spacing: 14){

                    ZStack {
                        
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color("SGreen-deep"))
                            .shadow(color: Color("DBlackShadow"), radius: 8, x: 4, y: 4)
                            .shadow(color: Color("DBlackShadow"), radius: 0, x: -1, y: -1)
                            .frame(width: 180, height: 57, alignment: .center)
                        
                        HStack(spacing: 14){
                            
                            addAndLessButtom(bottomStyle: "-")
                            
                            Text("0.5").font(Font.system(size: 30)).foregroundColor(Color("DBlack")).frame(width: 44)
                            
                            addAndLessButtom(bottomStyle: "+")
                
                        }
                    }
                    
                    Text("盘").font(Font.system(size: 30)).foregroundColor(Color("DWhite")).frame(width: 29)
                    
                    Spacer().frame(width: 103)
                    
                }
                
                Spacer().frame(height: 30)
                
                VStack(spacing: 0){
                    
                    Text("预计达成：").font(Font.system(size: 18)).foregroundColor(Color("DWhite")).frame(width: 100).padding(.trailing, 254).padding(.bottom, 15)
                    
                    
                    HStack(spacing: 14){
                        
                        SubViewsForNutritionsInResult(centerImage: "Pic-meat", takeIn: 60, demond: 100, centerImageSize: 53)
                        SubViewsForNutritionsInResult(centerImage: "Pic-calorie", takeIn: 60, demond: 100, centerImageSize: 43)
                        SubViewsForNutritionsInResult(centerImage: "Pic-fruit", takeIn: 60, demond: 100, centerImageSize: 42)
                        SubViewsForNutritionsInResult(centerImage: "Pic-protein", takeIn: 60, demond: 100, centerImageSize: 38)
                        SubViewsForNutritionsInResult(centerImage: "Pic-rice", takeIn: 60, demond: 100, centerImageSize: 39)
                        
                    }
                    
                }.padding(.bottom, 20)
                
                Button(action: {
                    
                            
                        }) {
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 10)
                            .foregroundColor(Color("SGreen-deep"))
                            .shadow(color: Color("DBlackShadow"), radius: 8, x: 4, y: 4)
                            .shadow(color: Color("DBlackShadow"), radius: 0, x: -1, y: -1)
                            .frame(width: 343, height: 75, alignment: .center)
                        
                        Text("吃掉!").font(Font.system(size: 30)).foregroundColor(Color("DBlack")).frame(width: 100)
                    }.padding(.bottom, 30)
                }
                
            }
        }
        
    }
}

struct CameraResultView_Previews: PreviewProvider {
    static var previews: some View {
        CameraResultView()
    }
}

struct addAndLessButtom: View {
    
    var bottomStyle: String
    
    var body: some View {
        
        ZStack{
            
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color("SGreen-deep"))
                .shadow(color: Color("DBlackShadow"), radius: 8, x: 4, y: 4)
                .shadow(color: Color("DBlackShadow"), radius: 0, x: -1, y: -1)
                .frame(width: 57, height: 57, alignment: .center)
       
            Text(bottomStyle).font(Font.system(size: 41)).foregroundColor(Color("DGrey"))
        }
         
    }
    
}

struct SubViewsForNutritionsInResult: View {
    
    var centerImage: String
    var takeIn: Int
    var demond: Int
    var centerImageSize: CGFloat
    var body: some View {
        
        ZStack{
            
            RoundedRectangle(cornerRadius: 33)
                .foregroundColor(Color(red: 237/255, green: 237/255, blue: 237/255))
//                .shadow(color: Color("DBlackShadow"), radius: 10, x: 4, y: 4)
//                .shadow(color: Color("DWhiteShadow"), radius: 10, x: -4, y: -4)
                .frame(width: 66, height: 67, alignment: .center)
            
            RoundedRectangle(cornerRadius: 31)
                .foregroundColor(Color(red: 237/255, green: 237/255, blue: 237/255))
//                .shadow(color: Color("DBlackShadow"), radius: 10, x: 4, y: 4)
//                .shadow(color: Color("DWhiteShadow"), radius: 10, x: -4, y: -4)
                .frame(width: 62, height: 63, alignment: .center)
             
            Image(centerImage).resizable().scaledToFit()
                .frame(width: centerImageSize, height: centerImageSize, alignment: .center)
       
        }
    }
}
