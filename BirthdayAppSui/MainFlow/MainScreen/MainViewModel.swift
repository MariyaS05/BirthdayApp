//
//  MainViewModel.swift
//  BirthdayAppSui
//
import Combine
import SwiftUI

final class MainViewModel: ViewModel {
    
    @Published var viewState: ViewState = .loaded(.init(userName: .init(name: "Mary"), hasPremium: true, contacts: [.mockContact]))
}

extension MainViewModel: ViewModelProtocol {
    typealias ViewState = ViewSate
    
    enum ViewSate {
        case empty(UserName)
        case loaded(LoadedState)
        case loading
    }
    
    struct UserName {
        var name: String
    }
    
    struct LoadedState {
        var userName: UserName
        var hasPremium: Bool
        var contacts: [ContactModel]
    }
}


