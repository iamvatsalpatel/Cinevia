//
//  Movie.swift
//  Cinevia
//
//  Created by Vatsal Patel  on 8/28/24.
//

import Foundation

struct Movie: Identifiable, Codable {
    var id: String
    var name: String
    var thumbnailURL: URL
}
