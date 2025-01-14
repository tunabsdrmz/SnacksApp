//
//  ProductModel.swift
//  Snacks
//
//  Created by Tuna Boşdurmaz on 14.01.2025.
//

import SwiftUI

struct Product: Identifiable {
    var id: UUID = .init()
    var name: String
    var category: String
    var image: String
    var color: Color
    var price: Int
}

var ProductList = [
    Product(name: "Good Source", category: "Choco", image: "image 1", color: .pink, price: 15),
    Product(name: "Unreal Muffins", category: "Choco", image: "image 2", color: .yellow, price: 18),
    Product(name: "Perfect Snacks", category: "Choco", image: "image 8", color: .purple, price: 28),
    Product(name: "Twister Chips", category: "Waffles", image: "image 3", color: .red, price: 48),
    Product(name: "Regular Nature", category: "Waffles", image: "image 4", color: .green, price: 38),
    Product(name: "Dark Russet", category: "Waffles", image: "image 5", color: .blue, price: 68),
    Product(name: "Smiths Chips", category: "Toffee", image: "image 6", color: .brown, price: 84),
    Product(name: "Deep River", category: "Toffee", image: "image 7", color: .orange, price: 86),
    
]
