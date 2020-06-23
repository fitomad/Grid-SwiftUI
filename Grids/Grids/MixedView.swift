//
//  MixedView.swift
//  Grids
//
//  Created by Adolfo Vera Blasco on 23/06/2020.
//

import SwiftUI

internal struct MixedView: View
{
    private var columns = [
        GridItem(.adaptive(minimum: 100)),
        GridItem(.flexible()),
        GridItem(.adaptive(minimum: 100))
    ]
    
    internal var body: some View
    {
        ScrollView([ .vertical ], showsIndicators: false)
        {
            LazyVGrid(columns: columns, alignment: .center, spacing: 8)
            {
                ForEach(0...44) { number in
                    Text("\(number)")
                        .font(.title)
                        .frame(height: 100)
                        .frame(maxWidth: .infinity)
                        .background(number.isEven ? Color.green : Color.yellow)
                }
            }
        }
        
    }
}

internal struct MixedView_Previews: PreviewProvider
{
    internal static var previews: some View
    {
        MixedView()
    }
}
