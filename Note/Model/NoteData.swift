//
//  NoteData.swift
//  Note
//
//  Created by 정유진 on 2023/02/27.
//

import Foundation
import RealmSwift

class NoteData: Object {
    @Persisted var title: String
    @Persisted var content: String
}
