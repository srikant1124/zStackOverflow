//
//  NetworkManager.swift
//  zStackOverflow
//
//  Created by Kumar jena, Srikant - Srikant on 9/4/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation

class NetworkManager: ObservableObject {
    @Published var posts = [Post]()
    let session = URLSession.shared
    
    func fetchData() {
        let urlInString = "https://hn.algolia.com/api/v1/search?tags=front_page"
        guard let url = URL(string: urlInString) else {
            return
        }
        let task = session.dataTask(with: url) { (data, response, error) in
            guard let safeData = data else {
                return
            }
            let decoder = JSONDecoder()
            do {
                let results = try decoder.decode(Posts.self, from: safeData)
                DispatchQueue.main.async {
                    self.posts = results.hits
                }
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
