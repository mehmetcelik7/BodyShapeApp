//
//  CurrentActivitiesView.swift
//  BodyShapeApp
//
//  Created by mehmet Çelik on 21.03.2025.
//

import SwiftUI

struct CurrentActivitiesView: View {
    let activity: Activity
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .stroke(.black,lineWidth: 1)
            .overlay(
                HStack {
                    VStack(alignment: .leading) {
                        Image(systemName: activity.activityImage)
                            .padding()
                            .background(lightPurple)
                            .clipShape(Circle())
                        
                        Text(activity.activityName)
                            .font(.title2)
                            .fontWeight(.bold)
                        
                    }
                    Spacer()
                }.padding(.horizontal)
            )
            .frame(width: activity.dim,height: activity.dim)
    }
}


#Preview {
    CurrentActivitiesView(activity: .init(dim: 150, activityName: "Running", activityImage: "figure.run"))
}
