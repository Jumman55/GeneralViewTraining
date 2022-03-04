//
//  PhotoInfoController.swift
//  GeneralViewTraining
//
//  Created by Jumman Hossen on 04/03/22.
//

import SwiftUI
 
class PhotoInfoController: ObservableObject{
    //MARK: - PROPERTIES
    
    
    //---------Coustom Error Type---------
    
    enum PhotoInfoError: Error, LocalizedError{
        case itemNotFound
    }
    
    //MARK: -Methods
    func fetchPhotoInfo() async throws -> PhotoInfo{
        var urlComponents = URLComponents(string: "https://api.nasa.gov/planetary/apod")!
        urlComponents.queryItems = ["api_key": "DEMO_KEY"].map{ URLQueryItem(name: $0.key, value: $0.value)}
        let (data, response) = try await URLSession.shared.data(from: urlComponents.url!)
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else{ throw PhotoInfoError.itemNotFound}
        let jsonDecoder = JSONDecoder()
        let photoInfo = try jsonDecoder.decode(PhotoInfo.self, from: data)
        return(photoInfo)
    }
    
    
}
