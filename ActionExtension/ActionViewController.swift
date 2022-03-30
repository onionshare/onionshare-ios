//
//  ActionViewController.swift
//  ActionExtension
//
//  Created by Benjamin Erhart on 29.03.22.
//

import AdParticipesCumCepis

class ActionViewController: AdParticipesCumCepis.ActionViewController {

    class override var appGroupId: String {
        return Config.appGroupId
    }
}
