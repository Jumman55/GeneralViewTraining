//
//  Button.swift
//  GeneralViewTraining
//
//  Created by Jumman Hossen on 23/01/22.
//

import SwiftUI

struct AddTaskButton: View {
    var body: some View {
        VStack {
            Text("Add Task")
                .font(.system(size: 20, weight: .semibold, design: .rounded))
                .frame(width: 200, height: 60)
                .foregroundColor(.black)
                .background(
                    
                    ZStack{
                       
                        
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .foregroundColor(.white)
                            .blur(radius: 16)
                            .offset(x: -8, y: -8)
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .fill(LinearGradient(gradient: Gradient(colors: [Color(red: 0.584, green: 0.51, blue: 1), Color(red: 0.301, green: 0.174, blue: 0.76)]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .foregroundColor(.white)
                            .blur(radius: 4)
                            .offset(x: 2, y: 2)
                    }
                )
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
        }//:VStack
        .shadow(color: Color(red: 0.301, green: 0.174, blue: 0.76).opacity(0.30), radius: 20, x:0, y: 10)
        
    }
}

struct AddTaskButton_Previews: PreviewProvider {
    static var previews: some View {
        AddTaskButton()
    }
}
