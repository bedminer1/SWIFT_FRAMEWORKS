//
//  FrameworkListTitle.swift
//  Apple_Frameworks
//
//  Created by Alex on 7/3/25.
//

import SwiftUI

struct FrameworkListTitle: View {
    let framework: Framework
    
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.medium)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
    }
}

#Preview {
    FrameworkListTitle(framework: MockData.sampleFramework)
}
