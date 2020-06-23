//
//  GridsApp.swift
//  Grids
//
//  Created by Adolfo Vera Blasco on 23/06/2020.
//

import SwiftUI

@main
struct GridsApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                VerticalGridView()
                    .tabItem({ Text("V.Adaptive") })
                
                HorizontalGridView()
                    .tabItem({ Text("Horizontal") })
                
                VerticalGridFlexibleView()
                    .tabItem({ Text("V.Flexible") })
                
                MixedView()
                    .tabItem({ Text("Mix") })
            }
        }
    }
}
