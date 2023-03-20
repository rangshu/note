//
//  MenuItem.swift
//  NoteTests
//
//  Created by 정유진 on 2023/02/27.
//

import RealmSwift
import SwiftUI

class MenuItem: Object, ObjectKeyIdentifiable{
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var name: String
    @Persisted var icon: String?
    @Persisted var level: MenuLevel = .main
    @Persisted var noteList: List<NoteData>
    
    var subItems: [MenuItem]?
    
    var noteCount: Int {
        get {
            return noteList.count
        }
    }
}
