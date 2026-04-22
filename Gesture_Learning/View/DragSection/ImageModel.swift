//
//  ImageModel.swift
//  Gesture_Learning
//
//  Created by Prakash on 22/04/26.
//

import Foundation
import SwiftUI

struct ImageModel : Identifiable{
    let id = UUID()
    let name : String
    let color : Color
    let zIndex : Double
    
    init(name: String, color: Color, zIndex: Double) {
        self.name = name
        self.color = color
        self.zIndex = zIndex
    }
    
    init(name: String, color: Color) {
        self.name = name
        self.color = color
        self.zIndex = 0
    }
    init(name: String) {
        self.name = name
        let colors : [Color] = [.red,.pink,.cyan,.orange,.purple,.yellow]
        self.color = colors.randomElement() ?? .red
        self.zIndex = 0
    }
}
