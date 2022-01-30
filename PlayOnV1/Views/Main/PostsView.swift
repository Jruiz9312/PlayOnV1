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
            List(PlayerPost.all) { playerPost in
                Text(playerPost.title)
//
                    .navigationTitle("Main Page")
                    .font(.headline)
                    .padding()
                    .cornerRadius(50)
                    
                    
                
            }
        }
        .navigationViewStyle(.stack)
        .padding()
        .background(.orange)
        
    }
        
}

struct PostsView_Previews: PreviewProvider {
    static var previews: some View {
        PostsView()
    }
}
