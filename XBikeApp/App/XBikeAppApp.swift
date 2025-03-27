//
//  XBikeAppApp.swift
//  XBikeApp
//
//  Created by Raúl Pavón on 26/03/25.
//

import SwiftUI

@main
struct XBikeAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
