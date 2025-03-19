//
//  SubCategoryView.swift
//  DnDCompanion
//
//  Created by Nick on 3/16/25.
//

import SwiftUI

struct SubCategoryView: View {
    let categoryIndex: Int
    
    var body: some View {
        List(1...5, id: \.self) { subCategoryIndex in
            NavigationLink(destination: SubCategoryDetailView(categoryIndex: categoryIndex, subCategoryIndex: subCategoryIndex)) {
                Text("SubCategory \(subCategoryIndex)")
            }
        }
        .navigationTitle("Category \(categoryIndex)")
    }
}

#Preview {
    SubCategoryView(categoryIndex: 1)
}
