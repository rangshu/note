//
//  WriteViewModel.swift
//  Note
//
//  Created by SooRin Kim on 2023/03/20.
//

import SwiftUI
import RealmSwift

class WriteViewModel: ObservableObject {
    @Published var title: String = ""
    @Published var contents: String = ""
    
    func save(title: String = "", contents: String = "") {
        let realm = try! Realm()
        let note = NoteData(title: title, content: contents)
        
        try! realm.write {
            realm.add(note)
        }
    }
}

