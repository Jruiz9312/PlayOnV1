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
            HomeView()
                .tabItem{
                    Label("Home", systemImage: "house")
                }
            
            PostsView()
                .tabItem{
                Label("Posts", systemImage:"square.fill.text.grid.1x2")
            }
    
            NewPostView()
                .tabItem{
                Label("New", systemImage:"plus")
            }
            FavoritesView()
                .tabItem{
                Label("Favorites", systemImage: "heart")
            }
            AccountView()
                .tabItem{
                Label("Account", systemImage: "gear")
            }
           
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TabBar()
            TabBar()
            TabBar()
            TabBar()
            TabBar()
                .previewInterfaceOrientation(.landscapeLeft)
            TabBar()
                .previewInterfaceOrientation(.landscapeLeft)
            TabBar()
                .previewInterfaceOrientation(.landscapeLeft)
           
        }
    }
}
