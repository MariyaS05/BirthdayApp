//
//  HeaderButtonView.swift
//  BirthdayAppSui
//

enum HeaderType {
    case settings
    case list
    case calendar
    case grid
    
    var image: ImageResource {
        switch self {
        case .settings:
                .settings
        case .list:
                .list
        case .calendar:
                .calendar
        case .grid:
                .cubes
        }
    }
}
import SwiftUI

struct HeaderButtonView: View {
    var headerType: HeaderType
    var action: @MainActor () -> ()
    var body: some View {
        Button {
            action()
        } label: {
            Image(.settings)
                .padding(12)
                .background {
                    RoundedRectangle(cornerRadius: 12, style: .continuous)
                        .fill(.appWhite)
                }
        }
    }
}

#Preview {
    HeaderButtonView(headerType: .settings, action: { })
}
