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
                            .background(Blur())
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
                            .background((Blur()))
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
               
                return 770
            }
                
            
            //MARK: -CameraResultView
            
            Drawer(heights: [0, 800]) {
               
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 19)
                        .frame(width: W, height: 731, alignment: .center)
                        .foregroundColor(Color(red: 70/255, green: 70/255, blue: 70/255, opacity:1))
                    
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
                                    .shadow(color: Color("DBlackShadow-result"), radius: 8, x: 4, y: 4)
                                    .shadow(color: Color("DWhiteShadow-result"), radius: 8, x: -4, y: -4)
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
                            self.isLocked = false
                            isAted = true
                                }) {
                            ZStack{
                                
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(Color("SGreen-deep"))
                                    .shadow(color: Color("DBlackShadow-result"), radius: 8, x: 4, y: 4)
                                    .shadow(color: Color("DWhiteShadow-result"), radius: 8, x: -4, y: -4)
                                    .frame(width: 343, height: 75, alignment: .center)
                                
                                Text("吃掉!").font(Font.system(size: 30)).foregroundColor(Color("DBlack")).frame(width: 100)
                            }.padding(.bottom, 30)
                        }
                        
                    }
                }
            
            }.locked($isLocked) {_ in
               
                return 760
            
            }
        
        }.edgesIgnoringSafeArea(.all)
   }
}

struct Blur: UIViewRepresentable {
    let style: UIBlurEffect.Style = .systemUltraThinMaterial

    func makeUIView(context: Context) -> UIVisualEffectView {
        return UIVisualEffectView(effect: UIBlurEffect(style: style))
    }

    func updateUIView(_ uiView: UIVisualEffectView, context: Context) {
        uiView.effect = UIBlurEffect(style: style)
    }
}

struct CameraView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
