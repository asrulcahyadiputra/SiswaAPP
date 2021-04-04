//
//  MapelModel.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 03/04/21.
//

import Foundation


// MARK: - root
struct Results: Codable {
    let success: Mapels
}

// MARK: - Success
struct Mapels: Codable {
    let status: Bool
    let data: [Mapel]
    let message: String
}

// MARK: - Datum
struct Mapel: Codable {
    let kodeMatpel, nama, singkatan: String

    enum CodingKeys: String, CodingKey {
        case kodeMatpel = "kode_matpel"
        case nama, singkatan
    }
}


