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
    @State var searchText = ""
   
   var filteredTasks: [Task] {
       if searchText.isEmpty{
           return realmDataManager.tasks
       }else{
           return realmDataManager.tasks.filter{
               $0.title.lowercased().contains(searchText.lowercased())}
   }
   }
    //MARK: -BODY
    var body: some View {
        NavigationView {
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
            .navigationBarTitle("My Tasks")
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .background(backgroundGradiant)
            .searchable(text: $searchText)
            
        }//: Navigation
        
    }
}
//MARK: -PREVIEW
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
