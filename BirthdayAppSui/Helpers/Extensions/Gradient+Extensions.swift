//
//  Gradient+Extensions.swift
//  BirthdayAppSui
//

import SwiftUI
extension LinearGradient {
    enum ColorType {
        case pink
        case blue
    }
    
    static func createGradient(colorType: ColorType) -> LinearGradient {
        switch colorType {
        case .blue:
            return LinearGradient(colors: [.gradientBlueTop, .gradientBlueBottom], startPoint: .topLeading, endPoint: .bottomTrailing)
        case.pink:
            return LinearGradient(colors: [.gradientPinkLeading, .gradientPinkTrailing], startPoint: .leading, endPoint: .trailing)
        }
    }
}

