//
//  TaskRow.swift
//  GeneralViewTraining
//
//  Created by Jumman Hossen on 13/01/22.
//

import SwiftUI

struct TaskRow: View {
    //MARK: - PROPERTIES
    var task: String
    var completed: Bool
    
    //MARK: -BODY
    var body: some View {
        HStack{
            Image(systemName: completed ? "checkmark.circle" : "circle")
            
            Text(task)
        }//: HStack
    }
}
 
//MARK: - PREVIEW
struct TaskRow_Previews: PreviewProvider {
    static var previews: some View {
        TaskRow(task: "Complete toggle style", completed: false )
    }
}
