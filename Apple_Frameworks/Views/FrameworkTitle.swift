//
//  FrameworkTitle.swift
//  Apple_Frameworks
//
//  Created by Alex on 6/3/25.
//

import SwiftUI

struct FrameworkTitle: View {
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.medium)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

#Preview {
    FrameworkTitle(framework: MockData.frameworks[0])
}
