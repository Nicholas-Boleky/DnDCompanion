//
//  SubCategoryView.swift
//  DnDCompanion
//
//  Created by Nick on 3/16/25.
//

import SwiftUI

struct SubCategoryListView: View {
    let category: Category
    @StateObject var viewModel: SubCategoryListViewModel

    var body: some View {
        List(viewModel.subCategories, id: \.urlPath) { subCategory in
            NavigationLink(destination: SubCategoryDetailView(categoryName: subCategory.name)) {
                Text("\(subCategory.name)")
            }
        }
        .navigationTitle("\(category.name)")
        .overlay {
            if viewModel.isLoading {
                ProgressView()
            }
        }
    }
}

#Preview {
    SubCategoryListView(category: Category(name: "abilities", urlPath: "/api/2014/abilities"), viewModel: SubCategoryListViewModel(dataProvider: SubCategoryDataProvider(), subCategoryPath: "/api/2014/abilities"))
}
