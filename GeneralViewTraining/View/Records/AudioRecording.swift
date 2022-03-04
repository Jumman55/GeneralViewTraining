//
//  AudioRecording.swift
//  GeneralViewTraining
//
//  Created by Jumman Hossen on 24/01/22.
//

import SwiftUI
import AVFoundation


struct AudioRecording: View {
    //MARK: - PROPERTIES
    @State var session: AVAudioSession!
    @State var recorder: AVAudioRecorder!
    
    
    //MARK: -BODY
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
    
    
    
}

//MARK: -PREVIEW
struct AudioRecording_Previews: PreviewProvider {
    static var previews: some View {
        AudioRecording()
    }
}
