//
//  ContentView.swift
//  About Me App Danielle
//
//  Created by danielle rabiner on 7/13/23.
//

import SwiftUI

struct ContentView: View {
    @State private var fact = ""
    var body: some View {
        ZStack{
            Color(.systemYellow)
                .ignoresSafeArea()
            VStack {
                Text("About Me...")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(Color.purple, lineWidth: 5)
                    )
                Spacer()
                Text("My name is Danielle, and i'm 17!!")
                    .font(.title)
                Image("AboutMePic")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Spacer()
                Spacer()
                Button("Reveal Fact") {
                    fact = "I am a competitive swimmer"
                }
                .font(.title2)
                .buttonStyle(.borderedProminent)
                .tint(.purple)
                Text(fact)
            }
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
