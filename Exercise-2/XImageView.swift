//
//  XImageView.swift
//  artwork
//
//  Created by Mariana Moura de Barros on 21/09/23.
//

import Foundation
import SwiftUI

struct XImageView: View {
    
    let imageName: String
    
    init(_ imageName: String) {
        self.imageName = imageName
    }
    
    var body: some View {
        ZStack{
            Image(imageName)
                .resizable()
                .frame(width: 150, height: 150)
                .cornerRadius(10)
            Image("x")
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(10)
        }
    }
}

struct XImageView_Previews: PreviewProvider {
    static var previews: some View {
        XImageView("Art2")
    }
}
