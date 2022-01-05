//
//  HomeView.swift
//  GeneralViewTraining
//
//  Created by Jumman Hossen on 29/12/21.
//

import SwiftUI

struct HomeView: View {
    //MARK: -PROPERTIES
    
    //MAEK: -BODY
    var body: some View {
        ZStack{
            backgroundGradiant
                .ignoresSafeArea()
            VStack{
                List{
                    ForEach(items)
                    
                }
                .listStyle(.plain)
                
            }//: VSTACK
        }//: ZSTAck
    }
}


//MARK: -PREVIEW
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
