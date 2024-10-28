//
//  HikesList.swift
//  SimpleList
//
//  Created by Goutham Devaraju on 24/10/24.
//

import SwiftUI

struct HikesList: View {
    
    let hikes = [
        Hikes(name: "Hikes to mountains", distance: "10", imageURL: "https://www.nps.gov/subjects/trails/images/hiker-at-sunset-SHEN-NPS.jpg?maxwidth=650&autorotate=false&quality=78&format=webp"),
        Hikes(name: "Hike to manali", distance: "24", imageURL: "https://www.nps.gov/subjects/trails/images/hiker-at-sunset-SHEN-NPS.jpg?maxwidth=650&autorotate=false&quality=78&format=webp")
    ]
    
    var body: some View {
        
        NavigationStack {
            List(hikes) { hike in
                NavigationLink(destination:
                                HikeDetails(hike: hike)
                ) {
                    Hike(hike: hike)
                }
            }.navigationTitle("Hikes")
        }
    }
}

#Preview {
    HikesList()
}

struct Hike: View {
    
    let hike: Hikes
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: hike.imageURL)) { image in
                image.image?.resizable()
                    .aspectRatio(contentMode: .fit)
            }
            .cornerRadius(15)
            .frame(width: 80)
            
            VStack(alignment: .leading){
                Text(hike.name)
                Text("\(hike.distance) miles")
            }
        }
    }
}
