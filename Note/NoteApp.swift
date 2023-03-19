//
//  NoteApp.swift
//  Note
//
//  Created by 정유진 on 2023/02/27.
//

import SwiftUI
import RealmSwift

let theAppConfig = loadAppConfig()

let app = App(id: theAppConfig.appId, configuration: AppConfiguration(baseURL: theAppConfig.baseUrl, transport: nil, localAppName: nil, localAppVersion: nil))

@main
struct NoteApp: SwiftUI.App {
    @StateObject var errorHandler = ErrorHandler(app: app)
    
    var body: some Scene {
        WindowGroup {
            MenuListView(app: app)
                .environmentObject(errorHandler)
                .alert(Text("Error"), isPresented: .constant(errorHandler.error != nil)) {
                    Button("OK", role: .cancel) { errorHandler.error = nil }
                } message: {
                    Text(errorHandler.error?.localizedDescription ?? "")
                }
        }
    }
}

final class ErrorHandler: ObservableObject {
    @Published var error: Swift.Error?
    
    init(app: RealmSwift.App) {
        app.syncManager.errorHandler = { syncError, syncSession in
            self.error = syncError
        }
    }
}
