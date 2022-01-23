//
//  SettingsView.swift
//  GeneralViewTraining
//
//  Created by Jumman Hossen on 13/01/22.
//

import SwiftUI
import Foundation

struct SettingsView: View {
    //MARK: - PROPERITES
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            VStack(alignment: .center, spacing: 0.0) {
                //MARK: -FORM
                Form {
                    //MARK: - SECTION 0
                    Section(header: Text("About the Application")){
                        ForEach(0 ..< section0["Icon"]!.count) { index in
                            FormRowStaticView(icon: section0["Icon"]![index], firstText: section0["FirstText"]![index], secondText: section0["SecondText"]![index])
                        }
                    }
                    
                }//:Form
                .listStyle(GroupedListStyle())
                .environment(\.horizontalSizeClass, .regular)
                
                //MARK: -FOOTER
                Text("Copyright © All rights reserved. \nBetter Apps ♡ Less code")
                    .font(.footnote)
                    .multilineTextAlignment(.center)
                    .padding(.top, 6)
                    .padding(.bottom, 8)
                    .foregroundColor(Color.secondary)
                    
                    
                    
                
                
                    
            }//: VStack
            .navigationBarTitle("Settings", displayMode:  .inline)
            .background(Color("settingsBackground").edgesIgnoringSafeArea(.all))
        }//: NavigationView
        .navigationViewStyle(.stack)
    }
}

//MARK: -PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
