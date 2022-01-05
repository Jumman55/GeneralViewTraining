//
//  DataModel.swift
//  GeneralViewTraining
//
//  Created by Jumman Hossen on 04/01/22.
//

import Foundation
import RealmSwift



class Item: Object {
    @objc dynamic var task: String = ""
    @objc dynamic var complete: Bool = false
    var parentCategory = LinkingObjects(fromType: Category.self, property: "items")
}


class Category: Object{
    @objc dynamic var name: String = ""
    let items = List<Item>()
}
