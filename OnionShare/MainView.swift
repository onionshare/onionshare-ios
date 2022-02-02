//
//  MainView.swift
//  OnionShare
//
//  Created by Benjamin Erhart on 17.12.21.
//

import SwiftUI
import AdParticipesCumCepis

public struct MainView: View {

    public var body: some View {
        TabView {
            NavigationView {
                ShareView(OsShareModel())
            }
            .navigationViewStyle(.stack)
            .tabItem {
                Image(systemName: "paperplane")
                Text(NSLocalizedString("Share", comment: ""))
            }

            NavigationView {
                ShareView(OsHostModel())
            }
            .navigationViewStyle(.stack)
            .tabItem {
                Image(systemName: "globe")
                Text(NSLocalizedString("Website", comment: ""))
            }
        }
        .onAppear {
            if #available(iOS 15.0, *) {
                let a = UITabBarAppearance()
                a.configureWithOpaqueBackground()
                UITabBar.appearance().scrollEdgeAppearance = a
            }
        }
    }
}

class OsShareModel: ShareModel {

    override var emptyBackgroundImage: String? {
        "mode_share"
    }
}


class OsHostModel: HostModel {

    override var emptyBackgroundImage: String? {
        "mode_website"
    }
}
