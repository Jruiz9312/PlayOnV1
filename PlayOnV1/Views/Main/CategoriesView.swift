//
//  HomeView.swift
//  PlayOnV1
//
//  Created by Juliana Ruiz  on 1/28/22.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView{
            List{
                ForEach(GroupAge.allCases){ groupAge in
                    NavigationLink{
                        ScrollView{
                            PostList(playerPost: PlayerPost.all.filter{$0.groupAge == groupAge.rawValue})
                        }
                        .navigationTitle(groupAge.rawValue)
                            
                    } label: {
                    Text(groupAge.rawValue)
                    
                    
                }
            }
            .navigationTitle("Group Ages")
         
        }
        .navigationViewStyle(.stack)
    }
    
}


struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
}
