//
//  FrameworkDetail.swift
//  Apple_Frameworks
//
//  Created by Alex on 6/3/25.
//

import SwiftUI

struct FrameworkDetail: View {
    var framework: Framework
    var isList: Bool
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack {
            if !isList {
                XDismissButton(isShowingDetailView: $isShowingDetailView)
            }
            
            Spacer()
            FrameworkTitle(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn More")
            }
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            Safari(url: URL(string: framework.urlString)!)
        })
    }
}

#Preview {
    FrameworkDetail(framework: MockData.sampleFramework,
                    isList: false,
                    isShowingDetailView: .constant(false))
        .preferredColorScheme(.dark)
}
