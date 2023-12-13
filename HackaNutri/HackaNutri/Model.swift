//
//  Model.swift
//  HackaNutri
//
//  Created by Student07 on 12/12/23.
//

import SwiftUI

struct food: Decodable, Identifiable, Hashable{
    let id: Int?
    let description: String?
    let energy_kcal: Float?
    let protein_g: Float?
    let carbohydrate_g: Float?
}
