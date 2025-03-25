//
//  SubCategoryDetailView.swift
//  DnDCompanion
//
//  Created by Nick on 3/16/25.
//

import SwiftUI

struct SubCategoryDetailView: View {
    let categoryName: String
    
    var body: some View {
        Text("SubCategory \(categoryName)")
            .navigationTitle("Detail")
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    SubCategoryDetailView(categoryName: "abilities")
}
