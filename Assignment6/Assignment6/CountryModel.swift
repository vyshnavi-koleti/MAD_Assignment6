//
//  CountryModel.swift
//  Assignment6
//
//  Created by Vyshnavi Koleti on 10/6/23.
//

import Foundation
import SwiftUI

struct Country: Codable, Identifiable {
    var id: Int { return UUID().hashValue }
    var name: CountryName
    var capital: [String]?
    var flag: String
    var population: Int
    var translations: TranslationName
    var car: CarName
    var currencies: [String: Currency]?
//    var timeZones: [String]?
    
}

struct CountryName: Codable {
    var common: String
    var official: String
}
struct TranslationName: Codable {
  var ara: Translation
}
struct Translation: Codable {
  var common: String
}
struct CarName: Codable {
  var side: String
}

struct Currency: Codable {
    var name: String?
    var symbol: String?
}
