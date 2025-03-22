//
//  CategoryView.swift
//  DnDCompanion
//
//  Created by Nick on 3/16/25.
//

import SwiftUI

struct CategoryListView: View {
    @StateObject private var viewModel = CategoryListViewModel()
    
    var body: some View {
        NavigationView{
            List(viewModel.categories, id: \.urlPath) { category in
                NavigationLink(destination: SubCategoryListView(category: category)) {
                    Text("\(category.name)")
                }
            }
            .navigationTitle("Categories")
            .overlay {
                if viewModel.isLoading {
                    ProgressView()
                }
            }
        }
    }
}

#Preview {
    CategoryListView()
}
