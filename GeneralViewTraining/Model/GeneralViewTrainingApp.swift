//
//  GeneralViewTrainingApp.swift
//  GeneralViewTraining
//
//  Created by Jumman Hossen on 29/12/21.
//

import SwiftUI

@main
struct GeneralViewTrainingApp: App {
    var body: some Scene {
        //MARK: - PROPERTIES
        let network = Network()
        //MARK: -BODY
        WindowGroup {
            ContentView()
                .environmentObject(network)
        }
    }
}
