//
//  RealmModel.swift
//  GeneralViewTraining
//
//  Created by Jumman Hossen on 04/01/22.
//

import SwiftUI
import RealmSwift

struct Realmmodel {
    
    let realm = try! Realm()
    var items: Results<Item>?
    
  //MARK: - DATA MANIPULATION METHOD
    
    func save(item: Item){
        do {
            try realm.write{
                realm.add(item)
            }
        } catch {
                print("Error saving category, \(error)")
            }
        }
    mutating func loadItems(){
        items = realm.objects(Item.self)
    }
    
    func updateModel(){
        
    }
    
}
