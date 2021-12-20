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
            NavigationView {
                ShareView(OsShareModel())
            }
            .navigationViewStyle(.stack)
    }
}

class OsShareModel: ShareModel {

    override var emptyBackgroundImage: String? {
        "mode_share"
    }
}
