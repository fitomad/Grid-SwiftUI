//
//  Int+Identifiable.swift
//  Grids
//
//  Created by Adolfo Vera Blasco on 23/06/2020.
//

import Foundation

extension Int: Identifiable
{
    ///
    public var id: Int
    {
        return self
    }
    
    public var isEven: Bool
    {
        return self % 2 == 0
    }
}
