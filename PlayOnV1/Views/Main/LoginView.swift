//
//  LoginView.swift
//  PlayOnV1
//
//  Created by Juliana Ruiz  on 1/30/22.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct LoginView: View {
    
    @State var username: String = ""
    @State var password: String = ""
      
      var body: some View {
          
          VStack {
              WelcomeText()
              UserImage()
              TextField("Username", text: $username)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
             SecureField("Password", text: $password)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(5.0)
                .padding(.bottom, 20)
              
              Text("LOGIN")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color.teal)
                .cornerRadius(15.0)
      }
  }
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

struct WelcomeText : View {
    var body: some View {
        VStack {
            Text("Welcome")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding(.bottom, 20)
        }
        
    }

}
    
struct UserImage : View {
    var body: some View {
        VStack {
            Image("logo")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 320, height: 320)
                .clipped()
                .cornerRadius(150)
                .padding(.bottom, 35)
        }
    }
}
}

