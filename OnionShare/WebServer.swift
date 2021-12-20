//
//  WebServer.swift
//  OnionShare
//
//  Created by Benjamin Erhart on 13.10.21.
//

import UIKit
import AdParticipesCumCepis
import Stencil
import PathKit

class WebServer: AdParticipesCumCepis.WebServer {

    private static var defaultContext: [String: Any] = [
        "app_name": Bundle.main.displayName,
        "static_url_path": "/static"]


    private let renderer: Environment


    init() {
        renderer = Environment(loader: FileSystemLoader(paths: [
            Path(Bundle.main.path(forResource: "templates", ofType: nil)!)]))

        super.init(localStaticPath: Bundle.main.path(forResource: "static", ofType: nil)!)

        WebServer.defaultContext["static_url_path"] = staticPath.dropLast()
    }


    override func renderTemplate(name: String, context: [String : Any]) throws -> String {
        return try self.renderer.renderTemplate(
            name: name.appending(".html"),
            context: WebServer.defaultContext.merging(context, uniquingKeysWith: { $1 }))
    }
}
