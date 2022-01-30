//
//  PostList.swift
//  PlayOnV1
//
//  Created by Juliana Ruiz  on 1/29/22.
//

import SwiftUI

struct PostList: View {
    var playerPost: [PlayerPost]
    
    var body: some View {
        HStack {
            VStack{
                Text("\(playerPost.count)\(playerPost.count > 1 ? " Active Posts": "playerPost")")
                    .font(.headline)
                    .fontWeight(.medium)
                .opacity(0.7)
                
                Spacer()
                
            }
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160),spacing:15)],spacing: 15) {
                ForEach(playerPost){playerPost in
                    NavigationLink(destination: PostCardView(playerPost: playerPost)){
                        PostCard(playerPost:playerPost)
                    }
                    
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
            PostList(playerPost: PlayerPost.all)
        }
    }
}
