//
//  ViewRouter.swift
//  GeneralViewTraining
//
//  Created by Jumman Hossen on 31/12/21.
//

import SwiftUI

class ViewRouter: ObservableObject{
    @Published var  currentPage: Page = .homePage
}


enum Page {
    case homePage
    case signInPage
    case signUpPage
}
