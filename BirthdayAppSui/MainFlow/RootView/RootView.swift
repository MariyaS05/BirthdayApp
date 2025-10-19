//
//  RootView.swift
//  BirthdayAppSui
//


import SwiftUI
import Factory

struct RootView: View {
    @StateObject var viewModel = RootViewModel()
    @InjectedObject(\.router) var router
    var body: some View {
        NavigationStack(path: $router.path) {
            MainView()
        }
    }
}

#Preview {
    RootView()
}
