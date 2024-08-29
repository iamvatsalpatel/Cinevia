//
//  HomeView.swift
//  Cinevia
//
//  Created by Vatsal Patel  on 8/28/24.
//

import SwiftUI

struct HomeView: View {
    var homeViewModel: HomeViewModel = HomeViewModel()
    
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(.vertical){
                VStack {
                    ForEach(homeViewModel.allCategories, id: \.self) { category in
                        HStack {
                            Text(category)
                                .font(.title3)
                                .bold()
                            Spacer()
                        }
                        .padding(.horizontal, 10)
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 10) {
                                ForEach(homeViewModel.movies[category] ?? [], id: \.id) { movie in
                                    ForEach(0..<4, id: \.self) { index in
                                        MovieTile(movie: movie)
                                    }
                                }
                            }
                            .padding(.horizontal, 10)
                        }
                    }
                }
            }
         
        }
        .foregroundColor(.white)
    }
}

#Preview {
    HomeView()
}
