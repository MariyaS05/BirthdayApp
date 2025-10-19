//
//  Font+Extensions.swift
//  BirthdayAppSui
//
import SwiftUI

extension Font {
    enum Geologica {
        case bold
        case medium
        
        var name: String {
            switch self {
            case .bold:
                return "Geologica-Bold"
            case .medium:
                return "Geologica-Medium"
            }
        }
    }

    static func geologicaFont(name: Geologica, size: CGFloat = 20) -> Font {
        return .custom(name.name, size: size)
    }
}

