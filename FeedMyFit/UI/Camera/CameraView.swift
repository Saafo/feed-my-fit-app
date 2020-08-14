//
//  CameraView.swift
//  FeedMyFit
//
//  Created by 祁汝鑫 on 2020/8/12.
//

import SwiftUI
import Foundation
import Drawer

struct CameraView: View {
   
    @State private var showingAlert = false
    @State private var isLocked = false
    
    var body: some View {
        ZStack {
            
            CameraViewController()
            
            Drawer(heights: [780, 800]) {
               
                VStack(spacing: 0){
                    
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 19)
                            .foregroundColor(Color(red: 70/255, green: 70/255, blue: 70/255, opacity:0.5))
                            .frame(width: W, height: 108, alignment: .center)
                        
                        HStack(spacing: 117){
                            
                            Image(systemName: "bolt.slash").resizable().scaledToFit().frame(width: 25, height: 33, alignment: .center).font(.system(size: 56.0, weight: .light)).foregroundColor(Color(UIColor.white))
                            
                            Image(systemName: "bolt.badge.a").resizable().scaledToFit().frame(width: 25, height: 33, alignment: .center).font(.system(size: 56.0, weight: .light)).foregroundColor(Color(UIColor.yellow))

                            Image(systemName: "bolt.fill").resizable().scaledToFit().frame(width: 25, height: 33, alignment: .center).font(.system(size: 56.0, weight: .light)).foregroundColor(Color(UIColor.white))
                        
                        }.padding(.top, 35)
                    }
                    
                    Spacer().frame(height: 380)
                    
                    ZStack{
                        
                        RoundedRectangle(cornerRadius: 19)
                            .foregroundColor(Color(red: 70/255, green: 70/255, blue: 70/255, opacity:0.5))
                            .frame(width: W, height: 269, alignment: .center)
                        
                        HStack(spacing: 0){
                            
                            Spacer()
                            
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 90)
                                .frame(width: 90, height: 90, alignment: .center)
                                .foregroundColor(Color(UIColor.white))
                                
                                RoundedRectangle(cornerRadius: 72)
                                .frame(width: 72, height: 72, alignment: .center)
                                .foregroundColor(Color(red: 70/255, green: 70/255, blue: 70/255, opacity:0.5))
                            
                                Button(action: {
                                    
                                    self.showingAlert = true
                                    
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {self.showingAlert = false}
                                    
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.2) {self.isLocked = true}
                                    
                                            
                                        }) {
                                            RoundedRectangle(cornerRadius: 67.5)
                                                .frame(width: 67.5, height: 67.5, alignment: .center)
                                                .foregroundColor(Color(UIColor.white))
                                            }
                                            .alert(isPresented: $showingAlert) {
                                                Alert(title: Text("正在识别"), message: Text("请稍候"), dismissButton: .default(Text("取消")))
                                            }
                                
                            }.padding(.trailing, 60)
                            
                            Image("Gallary").resizable().scaledToFit().frame(width: 50, height: 50, alignment: .center)
                                .padding(.trailing, 49)
                        }
                        
                    }
                    
                }
            
            }.locked($isLocked) {_ in
               
                return 0
            }
                
            
            
            Drawer(heights: [0, 800]) {
               
                CameraResultView()
            
            }.locked($isLocked) {_ in
               
                return 760
            
            }
        
        }.edgesIgnoringSafeArea(.all)
   }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
