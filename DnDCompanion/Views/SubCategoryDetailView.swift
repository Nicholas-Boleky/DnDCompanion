//
//  SubCategoryDetailView.swift
//  DnDCompanion
//
//  Created by Nick on 3/16/25.
//

import SwiftUI

struct SubCategoryDetailView: View {
    let categoryIndex: Int
    let subCategoryIndex: Int
    
    var body: some View {
        Text("Category \(categoryIndex) - Item \(subCategoryIndex)")
            .navigationTitle("Detail")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    SubCategoryDetailView(categoryIndex: 2, subCategoryIndex: 5)
}
