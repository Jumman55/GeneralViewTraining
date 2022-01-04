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
        let data = Data()
        let realm = try! Realm()
        print(Realm.Configuration.defaultConfiguration.fileURL!)
        try? realm.write{
            realm.add(data)
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
