//
//  LineView.swift
//  SimpleBill
//
//  Created by Guest User on 27/04/2022.
//

import SwiftUI

struct LineView: View {
    var body: some View {
        
        Line()
            .stroke(Color.blue, style: StrokeStyle(lineWidth: 2, lineCap: .butt, lineJoin: .miter,  dash: [10]))
            .frame(height: 1)
            .padding(.horizontal)

    }
}

struct LineView_Previews: PreviewProvider {
    static var previews: some View {
        LineView()
    }
}
