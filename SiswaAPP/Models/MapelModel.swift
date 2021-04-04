//
//  MapelModel.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 03/04/21.
//

import Foundation


// MARK: - root
struct Results: Decodable{
    let success: Mapels
}

// MARK: - Success
struct Mapels: Decodable{
    let status: Bool
    let data: [Mapel]
    let message: String
}

// MARK: - Datum
struct Mapel: Decodable, Identifiable {
    var id = UUID()
    let kodeMatpel, nama, singkatan: String

    enum CodingKeys: String, CodingKey {
        case kodeMatpel = "kode_matpel"
        case nama, singkatan
    }
}


