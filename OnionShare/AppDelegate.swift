//
//  AppDelegate.swift
//  OnionShare
//
//  Created by Benjamin Erhart on 24.10.22.
//

import AdParticipesCumCepis

class AppDelegate: BaseAppDelegate {

    /**
     Overridden to avoid copying assets into the host mode root folder, for which support is disabled in OnionShare for now.
     */
    override func moveSharedFiles(modes: [WebServer.Mode] = WebServer.Mode.allCases) {
        super.moveSharedFiles(modes: [.share])
    }
}
