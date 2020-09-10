//
//  ContentView.swift
//  zStackOverflow
//
//  Created by Kumar jena, Srikant - Srikant on 9/4/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView {
            List(networkManager.posts) { post in
                NavigationLink(destination: DetailView(post: post)) {
                    HStack {
                        Text("\(post.title)")
                        Text("\(post.points)")
                    }
                }
            }
            .navigationBarTitle("Stack Over Flow")
        }
        .onAppear {
            self.networkManager.fetchData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPad Pro (11-inch)"))
    }
}
