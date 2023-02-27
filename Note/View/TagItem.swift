//
//  TagItem.swift
//  Note
//
//  Created by 정유진 on 2023/02/27.
//

import SwiftUI

struct TagItem: View {
    var systemImageColor: Color = .accentColor
    var text: String
    var textcolor: Color = .gray
    var cornerRadius: CGFloat = 8.0
    var verticalPadding: CGFloat = 6.0
    var body: some View {
        VStack {
            ZStack {
                Text(text)
                    .lineLimit(1)
                    .foregroundColor(textcolor)
                    .padding(.leading, 10.0)
                    .padding(.trailing, 10.0)
            }
         }
        .padding(EdgeInsets(top: verticalPadding, leading: 6, bottom: verticalPadding, trailing: 6))
        .background(Color(uiColor: .secondarySystemBackground))
        .cornerRadius(cornerRadius)
    }
}

struct TagItem_Previews: PreviewProvider {
    static var previews: some View {
        TagItem(text:"sample")
    }
}
