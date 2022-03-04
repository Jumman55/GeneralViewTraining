//
//  HistoryView.swift
//  GeneralViewTraining
//
//  Created by Jumman Hossen on 13/01/22.
//

import SwiftUI

struct HistoryView: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var network: Network
    @State private var searchText: String = ""
    
    var filteredUser: [User]{
        if searchText.isEmpty{
            return network.users
        }else{
            return network.users.filter{
                $0.name.lowercased().contains(searchText.lowercased())}
        }
    }
    
    //MARK: -BODY
    var body: some View {
        NavigationView{
            ScrollView{
//                Text("Any User")
//                    .font(.title)
//                    .bold()
                VStack(alignment: .leading){
                    ForEach(filteredUser){ user in
                        HStack(alignment: .top){
                            Text("\(user.id)")
                            VStack(alignment: .leading){
                                Text(user.name)
                                    .bold()
                                Text(user.email.lowercased())
                                Text(user.website)
                                Text(user.phone)
                            }
                        }
                        .frame(width: 300, alignment: .leading)
                        .padding()
                        .background(backgroundGradiant)
                        .cornerRadius(20)
                    }
                }
            }
            .navigationBarTitle("User")
            .padding(.vertical)
            .task{
                do {
                    try await network.fetchUserData()
                } catch  {
                    print("Fetching user data Error: \(error)")
                }
            }
        }//: NavigationView
        .searchable(text: $searchText)
        .navigationViewStyle(.stack)
        
    }
}

//MARK: -PREVIEW
struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            HistoryView()
                .environmentObject(Network())
           
        }
    }
}
