//
//  HomeView.swift
//  PlayOnV1
//
//  Created by Juliana Ruiz  on 1/28/22.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            Text("Main Page")
                .navigationTitle("Main Page")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
