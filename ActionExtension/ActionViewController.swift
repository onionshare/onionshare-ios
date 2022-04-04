//
//  ActionViewController.swift
//  ActionExtension
//
//  Created by Benjamin Erhart on 29.03.22.
//

import AdParticipesCumCepisExtension

class ActionViewController: AdParticipesCumCepisExtension.ActionViewController {

    class override var appGroupId: String {
        return Config.appGroupId
    }
}
