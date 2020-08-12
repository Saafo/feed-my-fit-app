//
//  ContentView.swift
//  FeedMyFit
//
//  Created by mintsky on 2020/7/15.
//

import SwiftUI

let W = UIScreen.main.bounds.width
let H = UIScreen.main.bounds.width

struct ContentView: View {
    
    @State var page = 1
    @State var position = CGSize.zero
    
    var body: some View {
        
        HStack(spacing:0){
            MeView().frame(width: W, height: H)
            MainView().frame(width: W)
            MomentsView().frame(width: W)
        }
        .offset(x: CGFloat(2-self.page*2)/2*W + position.width)
        .gesture(DragGesture().onChanged{value in
            self.position = value.translation
        }.onEnded{value in
            if self.page == 0 && value.translation.width < -0.4*W{
                self.page = 1
            }else if self.page == 1 && value.translation.width < -0.4*W{
                self.page = 2
            }else if self.page == 2 && value.translation.width > 0.4*W{
                self.page = 1
            }else if self.page == 1 && value.translation.width > 0.4*W{
                self.page = 0
            }
            self.position = .zero
        })
        .frame(width:4*W)
        .animation(.easeInOut)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
