//
//  WriteView.swift
//  Note
//
//  Created by SooRin Kim on 2023/03/19.
//

import SwiftUI
import RealmSwift

struct WriteView: View {
    @State private var title: String = ""
    @State private var contents: String = ""
    
    var body: some View {
        NavigationStack {
            TextField(
                "",
                text: $title
            )
            .textFieldStyle(.automatic)
            .autocorrectionDisabled(true)
            .font(.largeTitle)
            .border(.red, width: 1.0)

            TextEditor(text: $contents)
                .border(.red, width: 1.0)
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
        WriteView()
    }
}
