//
//  FrameworkGrid.swift
//  Apple_Frameworks
//
//  Created by Alex on 6/3/25.
//

import SwiftUI

struct FrameworkGrid: View {
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitle(framework: framework)
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
        }
    }
}

#Preview {
    FrameworkGrid()
        .preferredColorScheme(.dark)
}
