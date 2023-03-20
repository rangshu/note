//
//  MenuItem.swift
//  NoteTests
//
//  Created by 정유진 on 2023/02/27.
//

import SwiftUI

struct _MenuItem: Identifiable {
    let id = UUID()
    let name: String
    var icon: String?
    var level: _MenuLevel = .main
    var subItems: [_MenuItem]?
    var noteCount: Int {
        get {
            return noteList.count
        }
    }
    var noteList: [_NoteData] = []
    
}
