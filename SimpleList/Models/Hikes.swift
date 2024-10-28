//
//  Hikes.swift
//  SimpleList
//
//  Created by Goutham Devaraju on 24/10/24.
//

import Foundation

struct Hikes: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let distance: String
    let imageURL: String
}
