//
//  ContentView.swift
//  PlayOnV1
//
//  Created by Juliana Ruiz  on 1/28/22.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
       TabBar()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
            ContentView()
                .environmentObject(PostViewModel())
    
    }
}
