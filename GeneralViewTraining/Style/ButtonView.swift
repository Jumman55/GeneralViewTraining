//
//  ButtonView.swift
//  GeneralViewTraining
//
//  Created by Jumman Hossen on 31/12/21.
//

import SwiftUI

struct ButtonView: View {
    //MARK: -PROPERTIES
    
    @State var buttonName: String
    //MARK: - BODY
    var body: some View {
        HStack(spacing: 8){
            Text(buttonName)
            Image(systemName: "arrow.right.circle")
                .imageScale(.large)
        }//: HStack
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
        .accentColor(.white)
        
    
    }
}
    //MARK -PREVIEW
struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(buttonName: "Start")
            .previewLayout(.sizeThatFits)
    }
}
