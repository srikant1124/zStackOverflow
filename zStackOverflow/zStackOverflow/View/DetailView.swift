//
//  DetailView.swift
//  zStackOverflow
//
//  Created by Kumar jena, Srikant - Srikant on 9/4/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var post: Post?
    var body: some View {
        Webview(path: post?.url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(post: Post(title: "Google",
                              url: "https://www.Apple.com/",
                              points: 1000,
                              objectID: "1"))
    }
}
