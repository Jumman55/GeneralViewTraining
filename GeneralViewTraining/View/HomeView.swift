//
//  HomeView.swift
//  GeneralViewTraining
//
//  Created by Jumman Hossen on 29/12/21.
//

import SwiftUI
import RealmSwift
import Network

struct HomeView: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var realmDataManager: RealmDataManager
    
    //MARK: -BODY
    var body: some View {
       
            VStack{
                Text("My taskes")
                    .font(.title3).bold()
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                List{
                    ForEach(realmDataManager.tasks, id: \.id){ task in
                        if !task.isInvalidated{
                            TaskRow(task: task.title, completed: task.completed)
                                .onTapGesture {
                                    realmDataManager.updateTask(id: task.id, completed: !task.completed)
                                }
                                .swipeActions(edge: .trailing){
                                    Button(role: .destructive){
                                        realmDataManager.deleteTask(id: task.id)
                                    } label: {
                                        Label("Delete", systemImage: "trash")
                                    }
                                }
                        }
                        
                    }
                    .listRowSeparator(.hidden)
                }
                .onAppear{
                    UITableView.appearance().backgroundColor = UIColor.clear
                    UITableViewCell.appearance().backgroundColor = UIColor.clear
                }
            }//: VStack
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(backgroundGradiant)
        
    }
}

//MARK: - PREVIEW
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RealmDataManager())
    }
}
