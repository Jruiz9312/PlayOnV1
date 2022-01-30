//
//  PostsView.swift
//  PlayOnV1
//
//  Created by Juliana Ruiz  on 1/28/22.
//

import SwiftUI

struct PostsView: View {
    var body: some View {
        NavigationView {
            PostList(playerPost:PlayerPost.all)
                    
                
        }
        .navigationViewStyle(.stack)
       
    }
}


struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView()
    }
}
