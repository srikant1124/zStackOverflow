//
//  Post.swift
//  zStackOverflow
//
//  Created by Kumar jena, Srikant - Srikant on 9/4/20.
//  Copyright © 2020 Kumar jena, Srikant - Srikant. All rights reserved.
//

import Foundation
import SwiftUI

struct Post: Decodable, Identifiable {
    var id: String {
        return objectID
    }
    let title: String
    let url: String?
    let points: Int
    let objectID: String
}
