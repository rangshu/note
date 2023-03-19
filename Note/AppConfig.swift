//
//  AppConfig.swift
//  Note
//
//  Created by SooRin Kim on 2023/03/19.
//

import Foundation
import RealmSwift

struct AppConfig {
    var appId: String
    var baseUrl: String
}

func loadAppConfig() -> AppConfig {
    guard let path = Bundle.main.path(forResource: "realmConfig", ofType: "plist") else {
        fatalError("Could not load realmConfig.plist file!")
    }
    
    let data = NSData(contentsOfFile: path)! as Data
    let realmConfigPropertyList = try! PropertyListSerialization.propertyList(from: data, format: nil) as! [String: Any]
    let appId = realmConfigPropertyList["appId"]! as! String
    let baseUrl = realmConfigPropertyList["baseUrl"] as! String
    
    return AppConfig(appId: appId, baseUrl: baseUrl)
}
