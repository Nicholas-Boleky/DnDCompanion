//
//  CategoryListViewModel.swift
//  DnDCompanion
//
//  Created by Nick on 3/19/25.
//

import Foundation

class CategoryListViewModel: ObservableObject {
    @Published var categories: [Category] = []
    @Published var isLoading: Bool = false
    @Published var errorMessage: String? = nil
    
    private var service: CategoryListDataProvidable
    
    init(service: CategoryListDataProvidable = CategoryListDataProvider()) {
        self.service = service
    }
    
    func loadData() {
        Task {
            await fetchCategories()
        }
    }
    
    @MainActor
    func fetchCategories() async {
        isLoading = true
        errorMessage = nil
        do {
            self.categories = try await service.fetchCategories()
        } catch {
        //TODO: Error Handling
            errorMessage = "Failed to load categories."
        }
        isLoading = false
    }
}
