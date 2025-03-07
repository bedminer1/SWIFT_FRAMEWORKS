//
//  FrameworkList.swift
//  Apple_Frameworks
//
//  Created by Alex on 7/3/25.
//

import SwiftUI

struct FrameworkList: View {
    @StateObject var viewModel = FrameworkGridViewModel()

    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination:FrameworkDetail(
                        framework: framework,
                        isList: true,
                        isShowingDetailView:$viewModel.isShowingDetailView)) {
                        FrameworkListTitle(framework: framework)
                    }
                }
            }
            .navigationTitle("Apple Frameworks")
        }
        .accentColor(Color(.label))
    }
}

#Preview {
    FrameworkList()
        .preferredColorScheme(.dark)
}
