//
//  ContentView.swift
//  FeedMyFit
//
//  Created by mintsky on 2020/7/15.
//

import SwiftUI

let W = UIScreen.main.bounds.width
let H = UIScreen.main.bounds.height
var isAted = false

struct ContentView: View {
    
    @State var wPage = 1
    @State var hPage = 1
    @State var position = CGSize.zero
    
    var body: some View {
        
        ZStack {
            Color.init("DBGColor").edgesIgnoringSafeArea(.all)
            VStack(spacing: 0){ 
                
                CameraView().frame(width: W, height: H)
                
                LazyHStack(alignment: .top, spacing:0){
                   
                    MeView().frame(width: W, height: H)
                    
                    MainView().frame(width: W, height: H)
            
                    MomentsView().frame(width: W, height: H)
                        
                }
                
            }.frame(height: 2*H)
            .padding(.bottom, H+19)
            .offset(x: CGFloat(2-self.wPage*2)/2*W + position.width)
            .offset(y: CGFloat(2-self.hPage*2)/2*H + position.height)
            .gesture(DragGesture().onChanged{value in
                self.position = value.translation
            }.onEnded{value in
                if self.wPage == 0 && value.translation.width < -0.4*W{
                    self.wPage = 1
                }else if self.wPage == 1 && value.translation.width < -0.4*W{
                    self.wPage = 2
                }else if self.wPage == 2 && value.translation.width > 0.4*W{
                    self.wPage = 1
                }else if self.wPage == 1 && value.translation.width > 0.4*W{
                    self.wPage = 0
                }else if self.hPage == 1 && value.translation.height > 0.3*H{
                    self.hPage = 0
                }else if self.hPage == 0 && value.translation.height < -0.3*H{
                    self.hPage = 1
                    print("Sliding!")
                }else if isAted == true{
                    self.hPage = 1
                    print("Now back successfully!")
                    isAted = false
                }
                self.position = .zero
            })
            .frame(width:3*W)
            .animation(.easeInOut)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

