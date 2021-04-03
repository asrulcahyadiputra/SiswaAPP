//
//  MapelModel.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 03/04/21.
//

import Foundation

// MARK: - Mapel
struct MapelResponse: Codable {
    let kodeMatpel, nama, singkatan: String

    enum CodingKeys: String, CodingKey {
        case kodeMatpel = "kode_matpel"
        case nama, singkatan
    }
}
