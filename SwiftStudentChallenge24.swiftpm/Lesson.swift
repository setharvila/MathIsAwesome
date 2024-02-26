//
//  Lesson.swift
//  Math
//
//  Created by Seth Arvila on 2/25/24.
//

import Foundation
import SwiftUI

struct Lesson: Identifiable {
    var id = UUID()
    var title: String
    var description: String
    var symbol: String

}

let lessons = [Lesson(title: "Square", description: "It's hip to be square", symbol: "square.fill"),
               Lesson(title: "Rectangle", description: "The stretched square", symbol: "rectangle.fill"),
               Lesson(title: "Circle", description: "The infinate loop", symbol: "circle.fill"),
               Lesson(title: "Rectangular Prism", description: "A rectangle with depth", symbol: "cube.fill"),
               Lesson(title: "Cylinder", description: "Like a drinking glass", symbol: "cylinder.fill"),
               ]
