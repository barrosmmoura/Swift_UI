//
//  ContentView.swift
//  artwork
//
//  Created by Mariana Moura de Barros on 21/09/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            //background
            Color(red: 30/255, green: 30/255, blue: 30/255)
                .edgesIgnoringSafeArea(.all)
            
            
            VStack(spacing: 35) {
                
                //header
                Text("GUSTAV KLIMT")
                    .font(.system(size:44))
                    .foregroundColor(Color(red: 214/255, green: 202/255, blue: 134/255))
                    .bold()
                
                //Images
                ContentImages()
                    .border(.white)
                
                
                Text("Qual é a obra deste artista?")
                    .font(.headline)
                    .foregroundColor(Color(red: 129/255, green: 140/255, blue: 151/255))
                    .bold()
                
                Button {
                    
                } label: {
                    Text("Avançar")
                        .font(.headline)
                        .foregroundColor(Color(red: 30/255, green: 30/255, blue: 30/255))
                        .padding(.vertical, 10)
                        .padding(.horizontal, 10)
                        .background(Color(red: 214/255, green: 202/255, blue: 134/255))
                        .cornerRadius(20)
                }
            }
        }
    }
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
