//
//  AddTaskView.swift
//  GeneralViewTraining
//
//  Created by Jumman Hossen on 13/01/22.
//

import SwiftUI

struct AddTaskView: View {
    //MARK: - PROPERTIES
    @EnvironmentObject var realmDataManager: RealmDataManager
    @State private var title: String = ""
    @Environment(\.dismiss) var dismiss
    
    //MARK: - BODY
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            
            Text("Create a new task")
                .font(.title3).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField("Enter your task", text: $title)
                .textFieldStyle(.roundedBorder)
            Button{
                if title != "" {
                    realmDataManager.addTask(taskTitle: title )
                }
                dismiss( )
            } label: {
                Text("Add task")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(.purple)
                    .cornerRadius(30)
            }
            Spacer()
        }//: VStack
        .padding(.top)
        .padding(.horizontal)
        .background(backgroundGradiantForSheet)
        .background(backgroundGradiant)
         
    }
}


//MARK: - PREVIEW
struct AddTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskView()
            .environmentObject(RealmDataManager())
    }
}
