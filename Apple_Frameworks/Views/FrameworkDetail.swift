//
//  FrameworkDetail.swift
//  Apple_Frameworks
//
//  Created by Alex on 6/3/25.
//

import SwiftUI

struct FrameworkDetail: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    @State private var isShowingSafariView: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {
                    isShowingDetailView = false
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
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
        .sheet(isPresented: $isShowingSafariView, content: {
            Safari(url: URL(string: framework.urlString)!)
        })
    }
}

#Preview {
    FrameworkDetail(framework: MockData.sampleFramework,
                    isShowingDetailView: .constant(false))
        .preferredColorScheme(.dark)
}
