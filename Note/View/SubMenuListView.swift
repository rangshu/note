//
//  SubMenuListView.swift
//  Note
//
//  Created by 정유진 on 2023/02/27.
//

import SwiftUI

struct SubMenuListView: View {
    @State var item: MenuItem
    
    var body: some View {
        Text("Sub Menu List")
    }
}

struct SubMenuListView_Previews: PreviewProvider {
    static var previews: some View {
        SubMenuListView(
            item: Constants.defaultMenuItem)
    }
}
