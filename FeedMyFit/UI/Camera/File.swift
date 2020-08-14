//
//  File.swift
//  FeedMyFit
//
//  Created by 祁汝鑫 on 2020/8/14.
//

import Foundation
import SwiftUI

struct SwiftUI: View {
    @State private var action: Int? = 0

    var body: some View {
    
        NavigationView {
                    VStack {
                        NavigationLink(destination: Text("Destination_1"), tag: 1, selection: $action) {
                            EmptyView()
                        }
                        NavigationLink(destination: Text("Destination_2"), tag: 2, selection: $action) {
                            EmptyView()
                        }
                        
                        Text("Your Custom View 1")
                            .onTapGesture {
                 //perform some tasks if needed before opening Destination view
                                self.action = 1
                        }
                        Text("Your Custom View 2")
                            .onTapGesture {
                 //perform some tasks if needed before opening Destination view
                                self.action = 2
                        }
                    }
                }
        }
}

struct File_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUI()
    }
}
