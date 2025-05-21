//
//  Little_LemonApp.swift
//  Little Lemon
//
//  Created by Valentyn Kotenko on 21/5/25.
//

import SwiftUI

@main
struct Little_LemonApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
