//
//  SubCategory.swift
//  DnDCompanion
//
//  Created by Nick on 3/21/25.
//

import Foundation

struct TLD: Decodable {
    let results: [SubCategory]
}

struct SubCategory: Decodable {
    let name: String
    let urlPath: String
    
    enum CodingKeys: String, CodingKey {
        case name
        case urlPath = "url"
    }
}
