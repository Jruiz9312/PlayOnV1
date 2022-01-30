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
    
    @Environment(\.dismiss) var dismiss
   
    
    
    var body: some View {
        NavigationView{
        Form{
            Section(header: Text("Title")){
                TextField("Post Title",text: $title)
            }
            Section(header: Text("Author")){
                TextField("Author",text: $author)
            }
            Section(header: Text("Contact")){
                TextField("Contact Info",text: $contactInfo)
            }
            Section(header: Text("Date of Game")){
                TextField("Date of Game",text: $gameDate)
            }
            Section(header: Text("Competive Level")){
                TextField("Date of Game",text: $gameDate)

            }
            Section(header: Text("Field Type")){
                TextField("Field Type ",text: $fieldType)
            }
            Section(header: Text("league")){
                TextField("league",text: $league)
            }
            Section(header: Text("Location")){
                TextField("Location",text: $location)
            }
            Section(header: Text("Game Day Info")){
                TextField("Game Day Info",text: $textBox)
            }
        }
        .toolbar(content: {
            ToolbarItem(placement: .navigationBarLeading){
                Button{
                    dismiss()
                    
                }label:{
                    Label("Cancel", systemImage:"xmark")
                        .labelStyle(.iconOnly)
                }
            }
           
                ToolbarItem{
                    Button{
                        
                    }label:{
                        Label("Done", systemImage:"checkmark")
                            .labelStyle(.iconOnly)
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