//
//  PostCardView.swift
//  PlayOnV1
//
//  Created by Juliana Ruiz  on 1/29/22.
//

import SwiftUI

struct PostCardView: View {
    var playerPost: PlayerPost
    var body: some View {
        ScrollView{
            AsyncImage(url: URL(string: playerPost.image)) {image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    

            } placeholder: {
                Image(systemName: "image")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                
                            
                }
            .frame(width: 300)
            .background(LinearGradient(gradient:Gradient(colors:[Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
            VStack(spacing:30){
                Text(playerPost.title)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding()
                VStack(alignment: .leading, spacing: 30){
                    Text(playerPost.textBox)
                    
                    VStack(alignment: .leading, spacing: 20){
                        Text("Details")
                            .font(.headline)
                            .bold()
                            .underline()
                            
                        
                        Text(playerPost.gameDate)
                        Text(playerPost.ageGroup)
                        Text(playerPost.compLevel)
                        Text(playerPost.fieldType)
                        Text(playerPost.league)
                        Text(playerPost.location)
                        Text(playerPost.dataPublisted)
                        Text(playerPost.author)
                        Text(playerPost.contactInfo)
                            

                        
                        
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
            
             }
            .padding(.horizontal)
            
            }
        .ignoresSafeArea(.container, edges: .top)
        }
    }


struct PostCardView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
            PostCardView(playerPost: PlayerPost.all[0])
        }
    }
}
