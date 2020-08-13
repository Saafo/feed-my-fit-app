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
                
                Spacer().frame(width: W, height: 11, alignment: .center)
                
                RoundedRectangle(cornerRadius: 19)
                    .frame(width: 88, height: 2, alignment: .center)
                    .foregroundColor(.black)
                
                Spacer().frame(height: 48)
                
                Image("MeatBall")
                
                HStack(spacing: 0){
                    
                    Text("肉丸").font(Font.system(size: 41)).foregroundColor(.white)
                    
                    Spacer().frame(width: 125)
                    
                    RoundedRectangle(cornerRadius: 7)
                        .frame(width: 117, height: 108, alignment: .center)
                        
                        .shadow(color: Color(red: 1, green: 1, blue: 1, opacity: 0.19), radius: 10, x: 2, y: 2)
                        .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.2), radius: 10, x: -2, y: -2)
                    
                        .foregroundColor(Color(red: 1, green: 1, blue: 1, opacity: 0))
                
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
