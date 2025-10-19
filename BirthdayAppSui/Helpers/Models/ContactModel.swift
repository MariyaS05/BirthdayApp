//
//  ContactModel.swift
//  BirthdayAppSui
//
import Foundation
import UIKit

struct ContactModel: Codable {
    var contactName: String
    var firthDate: Date
    var contactImageData: Data
    var notes: String
}

extension ContactModel {
    static let mockContact: ContactModel = .init(contactName: "Test",
                                                 firthDate: Date(),
                                                 contactImageData: (UIImage(systemName: "trash")?.pngData()!)!,
                                                 notes: "Test notes")
}
