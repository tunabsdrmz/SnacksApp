//
//  CategoryModel.swift
//  Snacks
//
//  Created by Tuna Boşdurmaz on 14.01.2025.
//

import SwiftUI

struct CategoryModel: Identifiable, Hashable {
    var id: UUID = .init()
    var icon: String
    var title: String
}

var CategoryList: [CategoryModel] = [
    CategoryModel(icon: "", title: "All"),
    CategoryModel(icon: "notequal.circle", title: "Choco"),
    CategoryModel(icon: "character.circle", title: "Waffles"),
    CategoryModel(icon: "malaysianringgitsign.circle", title: "Toffee"),
]
