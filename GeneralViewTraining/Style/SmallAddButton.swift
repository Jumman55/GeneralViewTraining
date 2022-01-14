//
//  SmallAddButton.swift
//  GeneralViewTraining
//
//  Created by Jumman Hossen on 13/01/22.
//

import SwiftUI

struct SmallAddButton: View {
    //MARK: - PROPERTIES
    
    //MARK: -BODY
    var body: some View {
        ZStack{
            Circle()
                .frame(width: 50)
                .foregroundColor(.purple)
            Text("+")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(.white)
        }
        .frame(height: 50)
    }
}

//MARK: -PREVIEW
struct SmallAddButton_Previews: PreviewProvider {
    static var previews: some View {
        SmallAddButton()
    }
}
