//
//  Constants.swift
//  Note
//
//  Created by 정유진 on 2023/02/27.
//

import SwiftUI

struct Constants {
    static let defaultMenuItem: _MenuItem = _MenuItem(
        name: "Develope",
        icon: "folder",
        level: .sub,
        noteList: [
            _NoteData(title: "하나은행",
                     content: "하나은행"),
            _NoteData(title: "Core",
                     content: "CoreData")
        ]
    )
    static let defaultMenuList: [_MenuItem] = [
        _MenuItem(
            name: "Develope",
            icon: "folder",
            level: .sub,
            noteList: [
                _NoteData(title: "하나은행",
                         content: "하나은행"),
                _NoteData(title: "Core",
                         content: "CoreData")
            ]
        ),
        _MenuItem(
            name: "Notes",
            icon: "folder",
            level: .sub,
            noteList: [
                _NoteData(title: "노트1",
                         content: "노트1컨텐츠"),
                _NoteData(title: "노트2",
                         content: "노트2컨텐츠")
            ]
        ),
    ]
    static let quickNote: _MenuItem = _MenuItem(name: "Quick Notes",
                                              icon: "macwindow",
                                              subItems: [
                                                _MenuItem(name: "Quick Note",
                                                         icon: "macwindow",
                                                         noteList: [
                                                            _NoteData(title: "quicknote", content: "quicknote content"),
                                                         ])
                                                ]
                                              )
    static let icloud: _MenuItem = _MenuItem(name: "iCloud", icon: nil, subItems: defaultMenuList)
}
