//
//  SubCategoryListViewModel.swift
//  DnDCompanion
//
//  Created by Nick on 3/21/25.
//

import Foundation

class SubCategoryListViewModel: ObservableObject {
    @Published var subCategories: [SubCategory] = []
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil
    
    private let dataProvider: SubCategoryDataProvidable
    private let subCategoryPath: String
    
    init(dataProvider: SubCategoryDataProvidable, subCategoryPath: String) {
        self.dataProvider = dataProvider
        self.subCategoryPath = subCategoryPath
        loadData()
    }
    
    private func loadData() {
        Task {
            await fetchSubCategories()
        }
    }
    
    @MainActor
    func fetchSubCategories() async {
        isLoading = true
        errorMessage = nil
        
        do {
            subCategories = try await dataProvider.fetchSubCategories(from: subCategoryPath)
            print("Fetched sub cat: \(subCategories.map { $0.name })")
        } catch {
            errorMessage = error.localizedDescription
        }
        isLoading = false
    }
}
