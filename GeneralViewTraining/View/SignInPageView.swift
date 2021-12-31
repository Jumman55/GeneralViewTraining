//
//  SignInPageView.swift
//  GeneralViewTraining
//
//  Created by Jumman Hossen on 29/12/21.
//

import SwiftUI

struct SignInPageView: View {
    //MARK: -PROPERTIES
    
    
    //MARK: -BODY
    var body: some View {
        ZStack {
            backgroundGradiant //from constants
                .ignoresSafeArea()
            VStack {
                Spacer()
                //This area for logo and welcome text
                Text("Logo")
                
                Spacer()
                //This area for user data as form email and password
                
                Spacer()
                //SignIn button to move into another view
                Button(action: {
                    //user sign in with Firebase
                    print("Going to Home ")
                }){
                    ButtonView(buttonName: "Sign In")
                }
                
                Spacer()
                //navigation to sign up page
                
                
            }//: VStack
        }//: ZStack
    }//:BODY
}


//MARK: - PREVIEW
struct SignInPageView_Previews: PreviewProvider {
    static var previews: some View {
        SignInPageView()
    }
}
