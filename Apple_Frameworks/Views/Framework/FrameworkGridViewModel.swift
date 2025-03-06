//
//  FrameworkGridViewModel.swift
//  Apple_Frameworks
//
//  Created by Alex on 7/3/25.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet { isShowingDetailView = true }
    }
    
    @Published var isShowingDetailView: Bool = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}
