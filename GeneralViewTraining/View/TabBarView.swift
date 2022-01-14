//
//  TabBarView.swift
//  GeneralViewTraining
//
//  Created by Jumman Hossen on 29/12/21.
//

import SwiftUI

struct TabBarView: View {
    //MARK: - PROPERTIES
    
    //MARK: -BODY
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "homekit")
                }
                
            HistoryView()
                .tabItem{
                    Label("History", systemImage: "clock.arrow.circlepath")
                }
            
            RecordsView()
                .tabItem{
                    Label("Records", systemImage: "waveform")
                }
            
            SettingsView()
                .tabItem{
                    Label("Settings", systemImage: "gear")
                }
        }
        .accentColor(Color("AccentColor"))
        
    }
}

//MARK: -PREVIEW
struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
