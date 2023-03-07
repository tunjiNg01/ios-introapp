//
//  CustomScene.swift
//  intro-app
//
//  Created by MACBOOK PRO on 26/02/2023.
//

import SwiftUI

struct CustomScene: Scene {
    var body: some Scene {
        WindowGroup {
            TabView {
                ContentView()
                    .tabItem{
                        Label("Home", systemImage: "list.dash")
                    }
                ItemView()
                    .badge(2)
                    .tabItem{
                        Label("Settings", systemImage: "folder.fill")
                    }
            }
        }
    }
}


