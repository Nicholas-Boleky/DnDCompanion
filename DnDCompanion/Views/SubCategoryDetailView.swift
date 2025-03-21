//
//  SubCategoryDetailView.swift
//  DnDCompanion
//
//  Created by Nick on 3/16/25.
//

import SwiftUI

struct SubCategoryDetailView: View {
    let categoryName: String
    let subCategoryIndex: Int
    
    var body: some View {
        Text("Category \(categoryName) - Item \(subCategoryIndex)")
            .navigationTitle("Detail")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    SubCategoryDetailView(categoryName: "abilities", subCategoryIndex: 5)
}
