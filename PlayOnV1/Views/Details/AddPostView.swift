//
//  AddPostView.swift
//  PlayOnV1
//
//  Created by Juliana Ruiz  on 1/30/22.
//

import SwiftUI

struct AddPostView: View {
    @State private var title: String = ""
    @State private var author: String = ""
    @State private var contactInfo: String = ""
    @State private var gameDate: String = ""
    @State private var ageGroup: String = ""
    @State private var compLevel: String = ""
    @State private var fieldType: String = ""
    @State private var league: String = ""
    @State private var location: String = ""
    @State private var textBox: String = ""
    @State private var navigateToPost = false
    
    @Environment(\.dismiss) var dismiss
   
    
    
    var body: some View {
        NavigationView{
        Form{
            Section(header: Text("Title")){
                TextEditor(text: $title)
            }
            Section(header: Text("Author")){
                TextEditor(text: $author)
            }
            Section(header: Text("Contact")){
                TextEditor(text: $contactInfo)
            }
            Section(header: Text("Date of Game")){
                TextEditor(text:  $gameDate)
            }
            Section(header: Text("Competive Level")){
                TextEditor(text:  $gameDate)

            }
            Section(header: Text("Field Type")){
                TextEditor(text:  $fieldType)
            }
            Section(header: Text("league")){
                TextEditor(text: $league)
            }
            Section(header: Text("Location")){
                TextEditor(text: $location)
            }
            Section(header: Text("Game Day Info")){
                TextEditor(text:  $textBox)
            }
        }
        .toolbar(content: {
            ToolbarItem(placement:   .navigationBarLeading){
                Button{
                    dismiss()
                    
                }label:{
                    Label("Cancel", systemImage:"xmark")
                        .labelStyle(.iconOnly)
                }
            }
            
                ToolbarItem{
                    NavigationLink(isActive: $navigateToPost){
//                        PostsView(playerPost: PlayerPost.all.sorted{$0.dataPublisted > $1.dataPublisted}[0])
//                            .navigationBarBackButtonHidden(true)
                    }label: {
                    Button{
                        navigateToPost = true
                        
                    }label:{
                        Label("Done", systemImage:"checkmark")
                            .labelStyle(.iconOnly)
                    }
                }
                    .disabled(title.isEmpty)
            }
    })
        .navigationTitle("Create Post")
        .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(.stack)
    }
}

struct AddPostView_Previews: PreviewProvider {
    static var previews: some View {
        AddPostView()
        }
    }

                 
