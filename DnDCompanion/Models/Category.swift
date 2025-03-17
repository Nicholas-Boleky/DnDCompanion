//
//  Category.swift
//  DnDCompanion
//
//  Created by Nick on 3/16/25.
//

import Foundation

struct Category: Identifiable, Codable {
    let id = UUID()
    let name: String
    let url: URL
}

