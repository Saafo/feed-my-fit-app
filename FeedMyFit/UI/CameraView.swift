//
//  CameraView.swift
//  FeedMyFit
//
//  Created by 祁汝鑫 on 2020/8/12.
//

import SwiftUI
import Foundation

struct CameraView: View {
   var body: some View {
        ZStack {
            
            CameraViewController()
                
            VStack(spacing: 0){
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 19)
                        .foregroundColor(Color(red: 70/255, green: 70/255, blue: 70/255, opacity:0.5))
                        .frame(width: 375, height: 108, alignment: .center)
                    
                    HStack(spacing: 117){
                        
                        Image(systemName: "bolt.slash").resizable().scaledToFit().frame(width: 25, height: 33, alignment: .center).font(.system(size: 56.0, weight: .light)).foregroundColor(Color(UIColor.white))
                        
                        Image(systemName: "bolt.badge.a").resizable().scaledToFit().frame(width: 25, height: 33, alignment: .center).font(.system(size: 56.0, weight: .light)).foregroundColor(Color(UIColor.yellow))

                        Image(systemName: "bolt.fill").resizable().scaledToFit().frame(width: 25, height: 33, alignment: .center).font(.system(size: 56.0, weight: .light)).foregroundColor(Color(UIColor.white))
                    
                    }.padding(.top, 35)
                }
                
                Spacer()
                
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 19)
                        .foregroundColor(Color(red: 70/255, green: 70/255, blue: 70/255, opacity:0.5))
                        .frame(width: 375, height: 269, alignment: .center)
                    
                    HStack(spacing: 0){
                        
                        Spacer()
                        
                        RoundedRectangle(cornerRadius: 90)
                            .frame(width: 90, height: 90, alignment: .center)
                            .foregroundColor(Color(UIColor.white))
                            .padding(.trailing, 43)
                        
                        Image("Gallary").resizable().scaledToFit().frame(width: 50, height: 50, alignment: .center)
                            .padding(.trailing, 49)
                    }
                    
                    
                }
                
            }
        }.edgesIgnoringSafeArea(.all)
   }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
