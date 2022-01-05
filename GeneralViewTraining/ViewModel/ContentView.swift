//
//  ContentView.swift
//  GeneralViewTraining
//
//  Created by Jumman Hossen on 29/12/21.
//

import SwiftUI
import RealmSwift

struct ContentView: View {
    init(){
        do{
            let realm = try Realm()
        
        } catch{
            print("Error initialising new realm, \(error)")
        } 
    }
    var body: some View {
        
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
