//
//  HorizontalGridView.swift
//  Grids
//
//  Created by Adolfo Vera Blasco on 23/06/2020.
//

import SwiftUI

internal struct HorizontalGridView: View
{
    //var rows: [GridItem] = Array(repeating: .init(.adaptive(minimum: 100)), count: 5)
    var rows: [GridItem] = Array(repeating: .init(.flexible()), count: 5)
    
    internal var body: some View
    {
        ScrollView([ .horizontal ], showsIndicators: false)
        {
            LazyHGrid(rows: rows, alignment: .center, spacing: 8)
            {
                ForEach(0 ..< 43) { number in
                    Text("\(number)")
                        .font(.title)
                        .frame(width: 100)
                        .frame(maxHeight: .infinity)
                        .background(number.isEven ? Color.orange : Color.purple)
                }
            }
        }
    }
}

struct HorizontalGridView_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalGridView()
    }
}
