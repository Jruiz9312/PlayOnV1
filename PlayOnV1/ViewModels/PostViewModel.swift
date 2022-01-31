//
//  PostViewModel.swift
//  PlayOnV1
//
//  Created by Juliana Ruiz  on 1/30/22.
//

import Foundation

class PostViewModel: ObservableObject{
    @Published private(set) var playerPost: [PlayerPost] = []
    
    init(){
        // fetch data from a real database but here were using hard coded data 
        playerPost  = PlayerPost.all
    }
//    func addPlayerpost(playerPost: PlayerPost){
//        playerPost.append(playerPost)
//    }
}
