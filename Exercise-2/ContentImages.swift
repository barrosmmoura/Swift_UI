//
//  ContentImages.swift
//  artwork
//
//  Created by Mariana Moura de Barros on 21/09/23.
//

import Foundation
import SwiftUI

struct ContentImages: View {
    
    var body: some View {
        HStack {
            Image("Art1")
                .resizable()
                .frame(width: 150, height: 150)
                .cornerRadius(10)
            VStack {
                XImageView("Art2")
                XImageView("Art3")
            }
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentImages()
        }
    }
}
    

