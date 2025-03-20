//
//  CategoryDataProvider.swift
//  DnDCompanion
//
//  Created by Nick on 3/19/25.
//

import Foundation

protocol CategoryListDataProvidable: NetworkClient {
    func fetchCategories() async throws -> [Category]
}

class CategoryListDataProvider : CategoryListDataProvidable {
    
    func fetchCategories() async throws -> [Category] {
        let request = URLRequest(url: EndPoint.getCategories.url!) //TODO: error handling
        let tld: [String: String] = try await perform(request)
        return tld.map { key, value in
            Category(name: key.capitalized, urlPath: value)
        }
        .sorted { $0.name < $1.name }
    }
}
