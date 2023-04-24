//
//  ExampleApp.swift
//  Example
//
//  Created by Piotr Wilk on 24/04/2023.
//

import SwiftUI

@main
struct ExampleApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                CarouselExapleView()
            }
            .navigationViewStyle(.stack)
        }
    }
}
