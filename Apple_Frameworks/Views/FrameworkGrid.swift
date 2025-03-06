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
        LazyVGrid(columns: columns) {
            FrameworkTitle(name: "App Clips", imageName: "app-clip")
            FrameworkTitle(name: "App Clips", imageName: "app-clip")
            FrameworkTitle(name: "App Clips", imageName: "app-clip")
            FrameworkTitle(name: "App Clips", imageName: "app-clip")
        }
    }
}

#Preview {
    FrameworkGrid()
}
