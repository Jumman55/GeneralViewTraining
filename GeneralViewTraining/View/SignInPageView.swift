//
//  SignInPageView.swift
//  GeneralViewTraining
//
//  Created by Jumman Hossen on 29/12/21.
//

import SwiftUI

struct SignInPageView: View {
    //MARK: -PROPERTIES
    
    @EnvironmentObject var viewRouter: ViewRouter
    @State var email = ""
    @State var password = ""
    
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
                SignInFields(email: $email, password: $password)
                
            
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
                HStack{
                    Text("Don't have an account?")
                    Button(action:{
                        viewRouter.currentPage = .signUpPage
                    }){
                        Text("Sign Up")
                            .foregroundColor(lemonYellow)   //this color from constant
                            .fontWeight(.heavy)
                            .font(.headline)
                    }
                }
                .opacity(0.9)
                
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

//MARK: -CHILDVIEW

struct SignInFields: View {
    @Binding var email: String
    @Binding var password: String
    var body: some View{
        Group{
            TextField("Email", text: $email)
                .padding()
                .background(Color(UIColor.systemGray6))
                .cornerRadius(10)
                .textInputAutocapitalization(.never)
            SecureField("Password", text: $password)
                .padding()
                .background(Color(UIColor.systemGray6))
                .cornerRadius(10)
            
        }//: Group
        
    }
}
