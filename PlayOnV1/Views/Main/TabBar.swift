//
//  TabBar.swift
//  PlayOnV1
//
//  Created by Juliana Ruiz  on 1/28/22.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView {
            
            PostsView()
                .tabItem{
                Label("Posts", systemImage:"square.fill.text.grid.1x2")
            }
            CategoriesView()
                .tabItem{
                    Label("Age Groups", systemImage: "square.grid.2x2")
                }
    
            NewPostView()
                .tabItem{
                Label("New Post", systemImage:"plus")
            }
            FavoritesView()
                .tabItem{
                Label("Favorites", systemImage: "heart")
            }
            AccountView()
                .tabItem{
                Label("Profile", systemImage: "person")
            }
        }
        .background(Color.orange)  
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
            TabBar()
            .environmentObject(PostViewModel())
           
        
    }
}
    
