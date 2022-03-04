//
//  PhotoInfo.swift
//  GeneralViewTraining
//
//  Created by Jumman Hossen on 04/03/22.
//

import Foundation

//MARK: - DATA

struct PhotoInfo: Codable{
    var title: String
    var discription: String
    var url: URL
    var copyright: String?
    
    enum CodingKyes: String, CodingKey{
        case title
        case discription = "explanation"
        case url
        case copyright
    }
}
