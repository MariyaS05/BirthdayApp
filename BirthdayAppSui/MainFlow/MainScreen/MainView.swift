//
//  MainView.swift
//  BirthdayAppSui
//


import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewModel()
    var body: some View {
        VStack {
            headerView
            
            setupView(viewState: viewModel.viewState)
            plusButton
        }
        
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .background(.white90)
    }
    
    private var headerView: some View {
        HStack {
            Text("\(.hello), \(userName) 👋")
                .font(.geologicaFont(name: .bold, size: 24))
                .foregroundStyle(.black100)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            HeaderButtonView(headerType: .settings) {
                print("settings")
            }
        }
    }
    
    private var plusButton: some View {
        Button {
            print("isdf")
        } label: {
            Image(.plus)
                .padding(24)
                .background {
                    LinearGradient.createGradient(colorType: .blue)
                        .clipShape(.rect(cornerRadius: 20, style: .continuous))
                }
        }
        .frame(maxHeight: .infinity, alignment: .bottom)
    }
    
    private var userName: String {
        switch viewModel.viewState {
        case .empty(let name):
            return name.name
        case .loaded(let loadedModel):
            return loadedModel.userName.name
        case .loading:
            return ""
        }
    }
    
    @ViewBuilder
    private func setupView(viewState: MainViewModel.ViewState) -> some View {
        
        switch viewState {
        case .empty:
            Color.blue
        case .loaded(let model):
            VStack {
                configurePremiumView(hasPremium: model.hasPremium)
            }
        case .loading:
            Color.red
        }
        
    }
    
    @ViewBuilder
    private func configurePremiumView(hasPremium: Bool) -> some View {
        if hasPremium {
            createCardView
        } else {
            getPremiumCard
        }
    }
    
    private var createCardView: some View {
        HStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(.gradientPinkLeading.opacity(0.12))
                .frame(width: 48, height: 48)
            
            Text(.createAUniqueGiftCard)
                .font(.geologicaFont(name: .bold, size: 24))
                .foregroundStyle(.black100)
            
            Image(.wand)
                .padding(12)
                .background {
                    LinearGradient.createGradient(colorType: .pink)
                }
        }
        
    }
    
    private var getPremiumCard : some View {
        HStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(.appWhite.opacity(0.17))
                .frame(width: 48, height: 48)
            
            VStack {
                HStack {
                    Text(.getPremium)
                        .font(.geologicaFont(name: .bold, size: 12))
                    Text(.andEnjoy)
                        .font(.geologicaFont(name: .medium, size: 12))
                }
                
                Text(.unlimitedFeatures)
                    .font(.geologicaFont(name: .medium, size: 12))
            }
            .foregroundStyle(.appWhite)
        }
        .padding(20)
        .background {
            LinearGradient.createGradient(colorType: .pink)
        }
    }
}

#Preview {
    MainView()
}
