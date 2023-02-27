//
//  ContentView.swift
//  Note
//
//  Created by 정유진 on 2023/02/27.
//

import SwiftUI
import CoreData

struct MenuListView: View {
    @State private var query = ""
    
    let quickNote: MenuItem = Constants.quickNote
    let menuList: [MenuItem] = [Constants.icloud]

    var body: some View {
//        NavigationSplitView {
//            // menu
//        } detail: {
//            // detail view for each of the menu item
//        }
        NavigationStack {
       
            // stack은 항상 제거되지 않은 가장 최근에 추가된 view를 표시
            // root view는 제거할 수 없음
            VStack {
                List {
                    // quick note
                    NavigationLink(destination: SubMenuListView(item: Constants.defaultMenuItem)) {
                        HStack {
                            if let icon = quickNote.icon {
                                Image(systemName: icon)
                                    .foregroundColor(.accentColor)
                                
                            }
                            Text(quickNote.name)
                            Spacer()
                            Text(String(quickNote.noteCount))
                                .foregroundColor(.secondary)
                        }
                    }
                    
                    // icloud
                    Section {
                        ForEach(Constants.defaultMenuList){ menu in
                            NavigationLink(destination: SubMenuListView(item: Constants.defaultMenuItem)) {
                                HStack {
                                    if let icon = menu.icon {
                                        Image(systemName: icon)
                                            .foregroundColor(.accentColor)
                                        
                                    }
                                    Text(menu.name)
                                    Spacer()
                                    Text(String(menu.noteCount))
                                        .foregroundColor(.secondary)
                                }
                            }
                        }
                                        
                    } header: {
                        Text("iCloud")
                            .textCase(nil)
                            .font(.title3)
                            .bold()
                            .foregroundColor(Color(uiColor: .label))
                    }
                    
                    // tags
                    Section {
                        HStack {
                            TagItem(text:"#tag")
                            TagItem(text:"#tag")
                            TagItem(text:"#tag")
                        }
                    } header: {
                        Text("Tags")
                            .textCase(nil)
                            .font(.title3)
                            .bold()
                            .foregroundColor(Color(uiColor: .label))
                    }
                    
                    
                }
                .listStyle(.sidebar)
                .navigationTitle("Folders")
            }
            .searchable(text: $query)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    EditButton()
                }
                ToolbarItem(placement: .bottomBar) {
                    HStack {
                        Button(action: addFolder) {
                            Label("",
                                  systemImage: "folder.badge.plus")
                        }
                        Spacer()
                        Button(action: addNote) {
                            Label("", systemImage: "square.and.pencil")
                        }
                    }
                }
                
                ToolbarItem(placement: .keyboard) {
                    Button(action: {}) {
                        Text("myButton")
                    }
                }
            } // end of toolbar
        }
    }
                                      
    private func addFolder() {
        print("add Folder")
    }
    
    private func addNote() {
        print("add Note")
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MenuListView()
    }
}
