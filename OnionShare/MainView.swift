//
//  MainView.swift
//  OnionShare
//
//  Created by Benjamin Erhart on 17.12.21.
//

import SwiftUI
import AdParticipesCumCepis

public struct MainView: View {

    @Environment(\.scenePhase)
    var scenePhase

    public var body: some View {
        NavigationView {
            ShareView(OsShareModel())
        }
        .navigationViewStyle(.stack)
        .onAppear {
            UITableView.appearance().backgroundColor = .systemBackground
        }
        .onChange(of: scenePhase) { newPhase in
            AppDelegate.shared?.changeOf(scenePhase: newPhase)
        }
        .onOpenURL { url in
            AppDelegate.shared?.handle(url: url)
        }
    }
}

class OsShareModel: ShareModel {

    override var titleText: String {
        Bundle.main.displayName
    }

    override var emptyBackgroundImage: String? {
        "mode_share"
    }
}
