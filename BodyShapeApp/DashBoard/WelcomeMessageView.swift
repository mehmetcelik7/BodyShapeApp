//
//  WelcomeMessageView.swift
//  BodyShapeApp
//
//  Created by mehmet Çelik on 20.03.2025.
//

import SwiftUI

struct WelcomeMessageView: View {
    let userName: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            HStack {
                Text("Hi,")
                Text(userName)
                    .fontWeight(.bold)
                
            }.font(.largeTitle)
            
            Text("Your boards looks so good")
                .font(.title3)
                .frame(width: screenWidth / 2, alignment: .topLeading)
                .multilineTextAlignment(.leading)
        }
    }
}

#Preview {
    WelcomeMessageView(userName: "emily")
}
