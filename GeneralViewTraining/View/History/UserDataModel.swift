//
//  UserDataModel.swift
//  GeneralViewTraining
//
//  Created by Jumman Hossen on 03/02/22.
//

import Foundation

struct User: Identifiable, Decodable{
    let id: Int
    let name: String
    let username: String
    let email: String
    let address: Address
    let phone: String
    let website: String
    let company: Company
    
    struct Address: Decodable{
        let street: String
        let suite: String
        let city: String
        let zipcode: String
        let geo: Geo
        
        struct Geo: Decodable{
            let lat: String
            let lng: String
        }
    }
    
    struct Company: Decodable{
        let name: String
        let catchPhrase: String
        let bs: String
    }
}
