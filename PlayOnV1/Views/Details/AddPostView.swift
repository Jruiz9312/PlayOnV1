//
//  AddPostView.swift
//  PlayOnV1
//
//  Created by Juliana Ruiz  on 1/30/22.
//

import SwiftUI

struct AddPostView: View {
    
    @EnvironmentObject var playerPostVM: PostViewModel
    
    
    @State private var title: String = ""
    @State private var author: String = ""
    @State private var contactInfo: String = ""
    @State private var gameDate: String = ""
    @State private var selectedgroupAge: GroupAge = GroupAge.open
    @State private var selectedlevel: Level = Level.recreactional
    @State private var selectedfield: Field = Field.indoor
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
           
            Section(header: Text("Age Group")){
                Picker("Age Group", selection: $selectedgroupAge){
                    ForEach(GroupAge.allCases){ groupAge in
                        Text(groupAge.rawValue)
                            .tag(groupAge)
                    }
                }
                .pickerStyle(.menu)

            }
            Section(header: Text("Competitive Level")){
                Picker("Competitive Level", selection: $selectedlevel){
                    ForEach(Level.allCases){ level in
                        Text(level.rawValue)
                            .tag(level)
                        
                    }
                }
                .pickerStyle(.menu)
            }
            Section(header: Text("Field Type")){
                Picker("Field Type", selection: $selectedfield){
                    ForEach(Field.allCases){ field in
                        Text(field.rawValue)
                            .tag(field)
                        
                    }
                }
                .pickerStyle(.menu)
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
            ToolbarItem(placement:.navigationBarLeading){
                Button{
                    dismiss()
                    
                }label:{
                    Label("Cancel", systemImage:"xmark")
                        .labelStyle(.iconOnly)
                }
            }
            
                ToolbarItem{
                    Button{
                        
                    } label:{
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
            .environmentObject(PostViewModel())
        }
    }



                 

