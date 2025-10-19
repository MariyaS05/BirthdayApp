//
//  ViewModel.swift
//  BirthdayAppSui
//
import SwiftUI
import Combine
import Factory

protocol ViewModelProtocol {
    associatedtype ViewState
}

class ViewModel: ObservableObject {
    @Injected(\.router) var router
    
    var cancellable = Set<AnyCancellable>()

}

