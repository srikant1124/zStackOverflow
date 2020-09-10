//
//  Webview.swift
//  zStackOverflow
//
//  Created by Kumar jena, Srikant - Srikant on 9/5/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import SwiftUI
import WebKit

struct Webview: UIViewRepresentable {
    typealias UIViewType = WKWebView
    let path: String?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let safePath = path,
            let safeUrl = URL(string: safePath) else {
                return
        }
        let urlRequest = URLRequest(url: safeUrl)
        uiView.load(urlRequest)
    }
}
