//
//  ContentView.swift
//  GeneralViewTraining
//
//  Created by Jumman Hossen on 29/12/21.
//

import SwiftUI
import RealmSwift

struct HomeView: View {
    //MARK: - PROPERTIES
    @StateObject var realmDataManager = RealmDataManager()
    @State private var showAddTaskView = false
    
    //MARK: -BODY
    var body: some View {
        ZStack(alignment: .bottomTrailing){
            MyTasksView()
                .environmentObject(realmDataManager)
            
            SmallAddButton()
                .padding()
                .onTapGesture {
                    showAddTaskView.toggle()
                }
        }//: ZStack
        .sheet(isPresented: $showAddTaskView){
            AddTaskView()
                .environmentObject(realmDataManager)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(backgroundGradiant)
    }
}
//MARK: -PREVIEW
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
