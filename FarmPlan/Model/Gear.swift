//
//  Gear.swift
//  FarmPlan
//
//  Created by Thorsten Karrer on 13.03.21.
//  Copyright © 2021 Thorsten Karrer. All rights reserved.
//

import Foundation

struct Recipe: Codable {
	let base_id: String
	let result_id: String
	let cost: Int
	let ingredients: [Ingredient]
}

struct Ingredient: Codable {
	let amount: Int
	let gear: String
}

struct Gear: Codable {
	let base_id: String
	let recipes: [Recipe]
	let tier: Int
	let required_level: Int
	let stats: [String : Double]
	let mark: String
	let cost: Int
	let image: String
	let url: URL
	let ingredients: [Ingredient]
	let name: String
}




