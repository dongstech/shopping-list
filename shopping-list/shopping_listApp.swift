//
//  shopping_listApp.swift
//  shopping-list
//
//  Created by Fuqiang Dong on 4/6/25.
//

import SwiftUI

@main
struct shopping_listApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
