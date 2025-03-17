//
//  CategoryView.swift
//  DnDCompanion
//
//  Created by Nick on 3/16/25.
//

import SwiftUI

struct CategoryView: View {
    var body: some View {
        NavigationView{
            List(1...5, id: \.self) { index in
                NavigationLink(destination: SubCategoryView(categoryIndex: index)) {
                    Text("Object \(index)")
                }
            }
            .navigationTitle("Categories")
        }
    }
}

#Preview {
    CategoryView()
}
