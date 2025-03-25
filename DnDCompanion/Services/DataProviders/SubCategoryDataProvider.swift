//
//  SubCategoryDataProvider.swift
//  DnDCompanion
//
//  Created by Nick on 3/21/25.
//

import Foundation

protocol SubCategoryDataProvidable: APIDataProvidable {
    func fetchSubCategories(from path: String) async throws -> [SubCategory]
}

class SubCategoryDataProvider: SubCategoryDataProvidable {
    func fetchSubCategories(from path: String) async throws -> [SubCategory] {
        let request = URLRequest(url: EndPoint.getSubCategory(path: path).url!) //TODO: error handling
        let decodedResponse: TLD = try await perform(request)
        return decodedResponse.results.map {
            SubCategory(name: $0.name, urlPath: $0.urlPath)
        }
        .sorted { $0.name < $1.name }
    }
}
