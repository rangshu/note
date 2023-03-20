//
//  MenuLevel.swift
//  Note
//
//  Created by 정유진 on 2023/02/27.
//

import Foundation
import RealmSwift

enum MenuLevel: String, PersistableEnum, CaseIterable {
    case root = "root"
    case main = "main"
    case sub = "sub"
    case detail = "detail"
}
