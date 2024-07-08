//
//  RailLineGridView.swift
//  metrola
//
//  Created by Francis Breidenbach on 7/6/24.
//

import SwiftUI

struct RailLineGridView: View {
    let railLines = [
        "railLine/a",
        "railLine/b",
        "railLine/c",
        "railLine/d",
        "railLine/e",
        "railLine/k",
    ]

    private var gridItemLayout = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: gridItemLayout, spacing: 20) {
                    ForEach(railLines, id: \.self) {
                        Image("\($0)")
                            .resizable()
                            .frame(width: 50, height: 50)
                            
                            
                        
                    }
                }
            }
        }
        .navigationTitle("Rail Lines")
    }
}

#Preview {
    RailLineGridView()
}
