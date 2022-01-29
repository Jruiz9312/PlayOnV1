//
//  NewPostView.swift
//  PlayOnV1
//
//  Created by Juliana Ruiz  on 1/28/22.
//

import SwiftUI

struct NewPostView: View {
    var body: some View {
        NavigationView {
            Text("New Post View")
                .navigationTitle("Create a Post")
        }
    }
}

struct NewPostView_Previews: PreviewProvider {
    static var previews: some View {
        NewPostView()
    }
}
