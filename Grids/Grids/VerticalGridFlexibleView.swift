//
//  VerticalGridFlexibleView.swift
//  Grids
//
//  Created by Adolfo Vera Blasco on 23/06/2020.
//

import SwiftUI

struct VerticalGridFlexibleView: View {
    var columns: [GridItem] = Array(repeating: .init(.flexible()), count: 3)
    
    internal var body: some View
    {
        ScrollView([ .vertical ], showsIndicators: false)
        {
            LazyVGrid(columns: columns, alignment: .center, spacing: 8)
            {
                ForEach(0 ..< 44) { number in
                    Text("\(number)")
                        .font(.title)
                        .frame(height: 100)
                        .frame(maxWidth: .infinity)
                        .background(number.isEven ? Color.red : Color.blue)
                }
            }
        }
    }
}

struct VerticalGridFlexibleView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalGridFlexibleView()
    }
}
