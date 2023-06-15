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
        "static_url_path": "/static",

        "error_header": NSLocalizedString("An error occurred", comment: "500.html"),
        "unexpected_error": NSLocalizedString("Sorry, an unexpected error seems to have occurred, and your request didn't succeed.", comment: "500.html"),

        "filename": NSLocalizedString("Filename", comment: "listing.html"),
        "size": NSLocalizedString("Size", comment: "listing.html"),

        "total_size": NSLocalizedString("Total size", comment: "send.html"),
        "compressed": NSLocalizedString("compressed", comment: "send.html"),
        "download_files": NSLocalizedString("Download Files", comment: "send.html"),
    ]


    private let renderer: Environment


    init() {
        renderer = Environment(loader: FileSystemLoader(paths: [
            Path(Bundle.main.path(forResource: "templates", ofType: nil)!)]))

        super.init(localStaticPath: Bundle.main.path(forResource: "static", ofType: nil)!)

        Self.defaultContext["static_url_path"] = staticPath.dropLast()
    }


    override func renderTemplate(name: String, context: [String : Any]) throws -> String {
        return try self.renderer.renderTemplate(
            name: name.appending(".html"),
            context: Self.defaultContext.merging(context, uniquingKeysWith: { $1 }))
    }
}
