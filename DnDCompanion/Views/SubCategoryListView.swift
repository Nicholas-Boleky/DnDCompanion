//
//  SubCategoryView.swift
//  DnDCompanion
//
//  Created by Nick on 3/16/25.
//

import SwiftUI

struct SubCategoryListView: View {
    let categoryName: String
    
    var body: some View {
        List(1...5, id: \.self) { subCategoryIndex in
            NavigationLink(destination: SubCategoryDetailView(categoryName: categoryName, subCategoryIndex: subCategoryIndex)) {
                Text("SubCategory \(subCategoryIndex)")
            }
        }
        .navigationTitle("\(categoryName)")
    }
}

#Preview {
    SubCategoryListView(categoryName: "Abilities")
}
