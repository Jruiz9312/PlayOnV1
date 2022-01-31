//
//  PlayOnV1App.swift
//  PlayOnV1
//
//  Created by Juliana Ruiz  on 1/28/22.
//

import SwiftUI

@main
struct PlayOnV1App: App {
    @StateObject var postViewModel = PostViewModel()
    
    var body: some Scene {
        WindowGroup {
            TabBar()
                .environmentObject(postViewModel)
        }
    }
}
