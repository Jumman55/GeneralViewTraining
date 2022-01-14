//
//  Constants.swift
//  GeneralViewTraining
//
//  Created by Jumman Hossen on 31/12/21.
//

import SwiftUI


//MARK: -COLORS AREA


let skyBlue = Color(red: 0.4627, green: 0.8392, blue: 1.0)
let lemonYellow = Color(hue: 0.1639, saturation: 1, brightness: 1)
let steelGray = Color(white: 0.4745)
var backgroundGradiant: LinearGradient = LinearGradient(gradient: Gradient(colors: [skyBlue, lemonYellow]), startPoint: .bottomTrailing, endPoint: .topLeading)
//let lightgray = Color(red: <#T##Double#>, green: <#T##Double#>, blue: <#T##Double#>)
var backgroundGradiantForSheet: LinearGradient = LinearGradient(gradient: Gradient(colors: [
    
    Color(red: 0.976, green: 0.976, blue: 0.976, opacity: 1),

    Color(red: 0.976, green: 0.976, blue: 0.976, opacity: 0)

  ]), startPoint: .topLeading, endPoint: .bottomTrailing)
