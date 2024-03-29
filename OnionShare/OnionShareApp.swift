//
//  OnionShareApp.swift
//  OnionShare
//
//  Created by Benjamin Erhart on 20.12.21.
//

import SwiftUI
import AdParticipesCumCepis

@main
struct OnionShareApp: App {

    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }

    @UIApplicationDelegateAdaptor(AppDelegate.self)
    var appDelegate


    init() {
        AppDelegate.appGroupId = Config.appGroupId

        WebServer.shared = WebServer()
    }
}
