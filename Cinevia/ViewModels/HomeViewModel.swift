//
//  HomeViewModel.swift
//  Cinevia
//
//  Created by Vatsal Patel  on 8/28/24.
//

import Foundation

class HomeViewModel: ObservableObject {
    // String == category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String] {
        movies.keys.map({String($0)})
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Top in the US"] = [exampleMovie1]
        movies["Action Movies"] = [exampleMovie2]
        movies["Top in the CA"] = [exampleMovie1]
        movies["Suspense Movies"] = [exampleMovie2]
    }
}
