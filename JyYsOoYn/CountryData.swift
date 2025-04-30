//
//  CountryData.swift
//  JyYsOoYn
//
//  Created by Amruth Kallyam on 4/26/25.
//

import Foundation

struct CountryData: Decodable {
    let capital: String?
    let code: String?
    let currency: Currency
    let language: Language
    let flag: String?
    let name: String?
    let region: String?
}

struct Currency: Decodable {
    let code: String?
    let name: String?
    let symbol: String?
}

struct Language: Decodable {
    let code: String?
    let name: String?
}
