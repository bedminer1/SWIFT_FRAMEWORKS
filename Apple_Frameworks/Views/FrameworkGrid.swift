//
//  FrameworkGrid.swift
//  Apple_Frameworks
//
//  Created by Alex on 6/3/25.
//

import SwiftUI

struct FrameworkGrid: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitle(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                            }
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView) {
                FrameworkDetail(framework: viewModel.selectedFramework!,
                                isShowingDetailView: $viewModel.isShowingDetailView)
            }
        }
    }
}

#Preview {
    FrameworkGrid()
        .preferredColorScheme(.dark)
}
