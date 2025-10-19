//
//  Router.swift
//  BirthdayAppSui
//

import Factory
import Combine
import SwiftUI

extension Container {
    var router: Factory<Router> {
        Factory(self) { @MainActor in Router()}
            .singleton
    }
}


final class Router: ObservableObject {
    @Published var path: NavigationPath = .init()
    @Published var screen: Screen?
    @Published var fullScreen: ModelScreen?
    
    func push(_ screen: Screen) {
        path.append(screen)
    }
    
    func popView() {
        guard path.isEmpty else { return }
        
        path.removeLast()
    }
    
    func presentModal(_ modalScreen: ModelScreen) {
        fullScreen = modalScreen
    }
    
    func dismissModal() {
        fullScreen = nil
    }

}

extension Router {
    enum Screen: Identifiable {
        case seeAll
        case settings
        case contactInfo
        
        var id: String {
            switch self {
            case .seeAll:
                "seeAll"
            case .settings:
                "settings"
            case .contactInfo:
                "contactInfo"
            }
        }
    }
    
    enum ModelScreen: Identifiable {
        case addOrEdintContac
        
        var id: String {
            return "addOrEdintContac"
        }
    }
}


