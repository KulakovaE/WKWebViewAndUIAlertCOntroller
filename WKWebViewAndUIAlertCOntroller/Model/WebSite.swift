//
//  WebSite.swift
//  WKWebViewAndUIAlertCOntroller
//
//  Created by Elena Kulakova on 2020-01-27.
//  Copyright © 2020 Elena Kulakova. All rights reserved.
//

import Foundation

struct WebSite {
    var name: String
    var url: String
}

struct DataSource {
    var websites: [WebSite]
    
    init() {
        let apple = WebSite(name: "Apple", url: "https://apple.com")
        let hackingWithSwift = WebSite(name: "Hacking with Swift", url: "https://hackingwithswift.com")
        let svtNews = WebSite(name: "SVT news", url: "https://www.svt.se")
        let medium = WebSite(name: "Medium", url: "https://medium.com")
        let swiftbysundell = WebSite(name: "Swift by Sundell", url: "https://www.swiftbysundell.com")
        websites = [apple, hackingWithSwift, svtNews, medium, swiftbysundell]
    }
}
