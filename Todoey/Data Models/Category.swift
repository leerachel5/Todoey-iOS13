//
//  Category.swift
//  Todoey
//
//  Created by Rachel Lee on 7/7/24.
//  Copyright © 2024 App Brewery. All rights reserved.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    @objc dynamic var hexColor: String = "000000"
    let items = List<Item>()
}
