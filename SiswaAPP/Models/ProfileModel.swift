//
//  ProfileModel.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 03/04/21.
//

import Foundation


// MARK: - Welcome
struct Profile: Codable {
    let user: [UserProfile]
    let periode: [Periode]
    let kodeFS: [KodeF]
    let kodeTa: [KodeTa]

    enum CodingKeys: String, CodingKey {
        case user, periode
        case kodeFS = "kode_fs"
        case kodeTa = "kode_ta"
    }
}

// MARK: - KodeF
struct KodeF: Codable {
    let kodeFS: String

    enum CodingKeys: String, CodingKey {
        case kodeFS = "kode_fs"
    }
}

// MARK: - KodeTa
struct KodeTa: Codable {
    let kodeTa: String

    enum CodingKeys: String, CodingKey {
        case kodeTa = "kode_ta"
    }
}

// MARK: - Periode
struct Periode: Codable {
    let periode: String
}

// MARK: - UserProfile
struct UserProfile: Codable {
    let nik, kodeMenu, kodeLokasi, kodePp: String
    let nis, nama, foto, background: String
    let statusLogin, kodeKelas, pathView, namaPp: String
    let email: JSONNull?
    let noHP, pass, tglLahir, password: String
    let kodeKlpMenu, statusAdmin, nmlok, logo: String
    let jabatan, nik2: String
    let tmpLahir, agama, jk: JSONNull?

    enum CodingKeys: String, CodingKey {
        case nik
        case kodeMenu = "kode_menu"
        case kodeLokasi = "kode_lokasi"
        case kodePp = "kode_pp"
        case nis, nama, foto, background
        case statusLogin = "status_login"
        case kodeKelas = "kode_kelas"
        case pathView = "path_view"
        case namaPp = "nama_pp"
        case email
        case noHP = "no_hp"
        case pass
        case tglLahir = "tgl_lahir"
        case password
        case kodeKlpMenu = "kode_klp_menu"
        case statusAdmin = "status_admin"
        case nmlok, logo, jabatan, nik2
        case tmpLahir = "tmp_lahir"
        case agama, jk
    }
}

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
    }
}

