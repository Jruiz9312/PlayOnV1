//
//  PostsView.swift
//  PlayOnV1
//
//  Created by Juliana Ruiz  on 1/28/22.
//

import SwiftUI

struct PostsView: View {
    @EnvironmentObject var playerPostVM: PostViewModel
    var body: some View {
        NavigationView {
            ScrollView{
                PostList(playerPost: playerPostVM.playerPost)
            }
            .navigationTitle("Active Posts")
        
                
        }
        .navigationViewStyle(.stack)
        
       
    }
        
}


struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
   
        PostsView()
            .environmentObject(PostViewModel())
    }
}

