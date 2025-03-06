//
//  Safari.swift
//  Apple_Frameworks
//
//  Created by Alex on 7/3/25.
//

import SwiftUI
import SafariServices

struct Safari: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<Safari>) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<Safari>) {}
}
