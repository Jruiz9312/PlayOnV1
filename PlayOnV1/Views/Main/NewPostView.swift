//
//  NewPostView.swift
//  PlayOnV1
//
//  Created by Juliana Ruiz  on 1/28/22.
//

import SwiftUI

struct NewPostView: View {
    @State private var showAddPostCard = true
    var body: some View {
        NavigationView {
            Button("Create New Post"){
                showAddPostCard = true
            }
            .navigationTitle("Create a Post")
        }
        .navigationViewStyle(.stack)
        .sheet(isPresented: $showAddPostCard){
            AddPostView()
        }
    }
}

struct NewPostView_Previews: PreviewProvider {
    static var previews: some View {
        NewPostView()
    }
}
