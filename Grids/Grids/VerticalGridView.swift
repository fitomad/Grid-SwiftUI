//
//  VerticalGridView.swift
//  Grids
//
//  Created by Adolfo Vera Blasco on 23/06/2020.
//

import SwiftUI

internal struct VerticalGridView: View
{
    var columns: [GridItem] = [ GridItem(.adaptive(minimum: 100)) ]
    
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
                        .background(number.isEven ? Color.orange : Color.purple)
                }
            }
        }
    }
}

struct VerticalGridView_Previews: PreviewProvider {
    static var previews: some View {
        VerticalGridView()
            .previewDevice("iPhone 11 Pro Max")
    }
}
