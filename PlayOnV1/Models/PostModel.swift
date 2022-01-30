//
//  PostModel.swift
//  PlayOnV1
//
//  Created by Juliana Ruiz  on 1/28/22.
//

import Foundation

enum GroupAge: String{
    case open = "Open Play"
    case coEd = "Co-Ed"
    case eighteenPlus = "18+"
    case thirtyPlus = "30+"
    case fortyPlus = "40+"
    case fiftyPlus = "50+"
}

enum Level: String{
    
    case recreactional = "Recreational League"
    case competivie = "Competitive League"
}

enum Field: String{
    case indoor = "Indoor"
    case outdoor = "Outdoor"
    case futsal = "Futsal"
}
struct PlayerPost: Identifiable{
    
    let id = UUID()
    let title: String
    let author: String
    let contactInfo: String
    let gameDate: String
    let ageGroup: GroupAge.RawValue
    let compLevel: Level.RawValue
    let fieldType: Field.RawValue
    let league: String
    let location: String //maybe add google maps if time allows
    let textBox: String
    let dataPublisted: String
    let image: String
 
        
    
}

extension PlayerPost{
    static let all: [PlayerPost] = [
        PlayerPost(title: "Player Needed For Outdoor Game @ 7:30pm", author: "Leo", contactInfo: "503-000-0010", gameDate: "7:30", ageGroup: "Open", compLevel: "Recreational", fieldType: "Indoor", league: "co-ed", location: "Clackamas Indoor", textBox: "We need a few extra players!Hopefully you can join our team permenetly", dataPublisted: "2022-01-29", image: "https://images.unsplash.com/photo-1570498839593-e565b39455fc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80"),
        PlayerPost(title: "Open Tournament Rose City Futsal", author: "Cristiano", contactInfo: "503-000-0007", gameDate: "TBA", ageGroup: "30+", compLevel: "Recreational", fieldType: "Futsal", league: "Mexi-Leauge", location: "Rose City West", textBox: "Shamrock Tournament - 8 teams one prize. 3 day tournament. The team who wins - wins free play in any division for a year(Team must play with atleast 5 or more plays of the originating team for each cycle)", dataPublisted: "2022-02-09", image:"https://images.unsplash.com/photo-1630420598913-44208d36f9af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1025&q=80"),
        PlayerPost(title: "Futsal Goalie Needed", author: "Diego", contactInfo: "503-000-1980", gameDate: "TBA", ageGroup: "30+", compLevel: "Recreational", fieldType: "Futsal", league: "Champions", location: "Rose City West/East", textBox: "Our goalie has been injured, hopeful to be back next playing cycle but we need someone in the meantime", dataPublisted: "2022-01-29", image: "https://images.unsplash.com/photo-1587384474964-3a06ce1ce699?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
        PlayerPost(title: "New To Portland", author: "Joaquin Da Machine", contactInfo: "503-000-1993", gameDate: "TBA", ageGroup: "30+", compLevel: "Recreational", fieldType: "All", league: "None", location: "Portland", textBox: "Hey! Just moved to Portland from SoCal! Looking to join a rec team that can be competitive. I played D1 back in college", dataPublisted: "2022-01-29", image: "https://images.unsplash.com/photo-1579952363873-27f3bade9f55?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=735&q=80"),
            PlayerPost(title: "Tualatin Indoor Hosting World Cup Viewing Party", author: "Sal your pal", contactInfo: "503-000-1943", gameDate: "TBA", ageGroup: "Open", compLevel: "Recreational", fieldType: "Indoor", league: "none", location: "Tualatin ", textBox: "QATAR 2022 is here!!!! Hosting viewing parties all day long and open during any games that are overnight, bar will be operational at all hours.", dataPublisted: "2022-01-01", image: "https://images.unsplash.com/photo-1600679472829-3044539ce8ed?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
        PlayerPost(title: "OPSL Players needed", author: "Cat", contactInfo: "503-010-1943", gameDate: "TBA", ageGroup: "Open", compLevel: "Recreational", fieldType: "Outdoor", league: "none", location: "Beckman Field", textBox: "Swoosh is looking to add some memebers to the team, deffensive back needed as well as a forward.", dataPublisted: "2022-01-01", image: "https://images.unsplash.com/photo-1618073193718-23a66109f4e6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1287&q=80"),
        
        ]
        }

