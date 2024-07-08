//
//  ContentView.swift
//  metrola
//
//  Created by Francis Breidenbach on 7/5/24.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        TabView {
            RailLineGridView()
                .tabItem {
                    Label("Rail Lines", systemImage: "testtube.2")
                }
        }
    }
}

#Preview {
    RootView()
}
