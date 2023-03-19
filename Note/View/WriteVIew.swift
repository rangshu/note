//
//  WriteVIew.swift
//  Note
//
//  Created by SooRin Kim on 2023/03/19.
//

import SwiftUI
import RealmSwift

struct WriteVIew: View {
    @State private var text: String = ""
    
    var body: some View {
        NavigationStack {
            TextEditor(text: $text)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {}) {
                    Image(systemName: "square.and.arrow.up")
                }
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {}) {
                    Image(systemName: "ellipsis.circle")
                }
            }

            ToolbarItem(placement: .navigationBarTrailing) {
                Button("Done", action: {})
            }
        } // .toolbar end
    }
}

struct WriteVIew_Previews: PreviewProvider {
    static var previews: some View {
        WriteVIew()
    }
}
