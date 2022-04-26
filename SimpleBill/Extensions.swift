//
//  Extensions.swift
//  SimpleBill
//
//  Created by Guest User on 01/04/2022.
//

import Foundation
import SwiftUI

struct Line: Shape {
    func path(in rect: CGRect) -> Path {
        return Path{ path in
            
            path.move(to: CGPoint(x: 0, y: 0))
            path.addLine(to: CGPoint(x: rect.width, y: 0))
        }
    }
}

struct Payer: Identifiable {
    
    var id = UUID().uuidString
    var image: String
    var name: String
    var bgColor: Color
    var offset: CGFloat = 0
}
