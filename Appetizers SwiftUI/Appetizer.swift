//
//  Appetizer.swift
//  Appetizers SwiftUI
//
//  Created by Catalin Palade on 29/12/2020.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    
    let id:             Int
    let name:           String
    let description:    String
    let price:          Double
    let imageURL:       String
    let calories:       Int
    let protein:        Int
    let carbs:          Int
    
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(id: 0001,
                                           name: "Test Appetizer",
                                           description: "This is the description for my appetizer. It's yummy",
                                           price: 9.99,
                                           imageURL: "",
                                           calories: 99,
                                           protein: 23,
                                           carbs: 5)
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
}
