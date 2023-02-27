//
//  MenuItem.swift
//  NoteTests
//
//  Created by 정유진 on 2023/02/27.
//

import SwiftUI

struct MenuItem: Identifiable {
    let id = UUID()
    let name: String
    var icon: String?
    var level: MenuLevel = .main
    var subItems: [MenuItem]?
    var noteCount: Int {
        get {
            return noteList.count
        }
    }
    var noteList: [NoteData] = []
    
}
