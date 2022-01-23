//
//  FormRowStaticView.swift
//  GeneralViewTraining
//
//  Created by Jumman Hossen on 15/01/22.
//

import SwiftUI

struct FormRowStaticView: View {
    //MARK: - PROPERTIES
    var icon: String
    var firstText: String
    var secondText: String
    
    //MARK: -BODY
    var body: some View {
        HStack {
            ZStack{
                RoundedRectangle(cornerRadius: 8, style: .continuous)
                    .fill(Color.gray)
                Image(systemName: icon)
                    .foregroundColor(.white)
                    .font(.title3)
            }//:ZStack
            .frame(width: 36, height: 36, alignment: .center)
            Text(firstText)
            Spacer()
            Text(secondText)
    
        }//:HStack
    }
}

//MARK: -PREVIEW
struct FormRowStaticView_Previews: PreviewProvider {
    static var previews: some View {
        FormRowStaticView(icon: "gear", firstText: "Application", secondText: "GVT")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
