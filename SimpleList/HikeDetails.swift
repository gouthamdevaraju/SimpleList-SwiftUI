//
//  HikeDetails.swift
//  SimpleList
//
//  Created by Goutham Devaraju on 24/10/24.
//

import SwiftUI

struct HikeDetails: View {
    
    let hike: Hikes
    @State private var isTapped: Bool = false
    
    var body: some View {
        
        VStack {
            AsyncImage(url: URL(string: hike.imageURL)) { image in
                image.image?.resizable()
                    .aspectRatio(contentMode: isTapped ? .fill : .fit)
                    .onTapGesture {
                        withAnimation {
                            isTapped.toggle()
                        }
                    }
            }
            
            Text(hike.name)
                .font(.headline)
                .padding()
            
            Text("\(hike.distance) km")
            
            Spacer()
        }
        .navigationTitle(hike.name)
        .navigationBarTitleDisplayMode(.inline)
        
        
    }
}

#Preview {
    HikeDetails(hike: Hikes(name: "Terkking keer ganga", distance: "12", imageURL: "https://www.nps.gov/subjects/trails/images/hiker-at-sunset-SHEN-NPS.jpg?maxwidth=650&autorotate=false&quality=78&format=webp"))
}
