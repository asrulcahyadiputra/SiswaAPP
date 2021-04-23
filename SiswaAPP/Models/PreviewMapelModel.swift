//
//  PreviewMapelModel.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 22/04/21.
//

import Foundation

// MARK: - Welcome
struct PreviewDetail: Codable {
    let success: PreviewDetailSuccess
}

// MARK: - Success
struct PreviewDetailSuccess: Codable {
    let status: Bool
    let dataTa: [PreviewDataTa]
    let dataGuru: [PreviewDataGuru]
    let dataKompetensi: [PreviewDataKompetensi]
    let message: String

    enum CodingKeys: String, CodingKey {
        case status
        case dataTa = "data_ta"
        case dataGuru = "data_guru"
        case dataKompetensi = "data_kompetensi"
        case message
    }
}

// MARK: - DataGuru
struct PreviewDataGuru: Codable {
    let nik, kodeMatpel, namaGuru, namaMatpel: String
    let singkatan: String

    enum CodingKeys: String, CodingKey {
        case nik
        case kodeMatpel = "kode_matpel"
        case namaGuru = "nama_guru"
        case namaMatpel = "nama_matpel"
        case singkatan
    }
}

// MARK: - DataKompetensi
struct PreviewDataKompetensi: Codable, Identifiable {
    let id = UUID()
    let kodeKd, namaKd: String
    let pelaksanaan: [Pelaksanaan]
    let semester: String

    enum CodingKeys: String, CodingKey {
        case kodeKd = "kode_kd"
        case namaKd = "nama_kd"
        case pelaksanaan, semester
    }
}

// MARK: - Pelaksanaan
struct Pelaksanaan: Codable, Identifiable {
    let id = UUID()
    let noBukti, kodeJenis, pelaksanaan, nilai: String
    let tgl: String
    let fileDok: String
    let kkm, kodeKd: String
    let stsKkm: String
    let keterangan: String
    let deskripsi: String
    let semester: String

    enum CodingKeys: String, CodingKey {
        case noBukti = "no_bukti"
        case kodeJenis = "kode_jenis"
        case pelaksanaan, nilai, tgl
        case fileDok = "file_dok"
        case kkm
        case kodeKd = "kode_kd"
        case stsKkm = "sts_kkm"
        case keterangan, deskripsi, semester
    }
}

enum FileDok: String, Codable {
    case empty = "-"
}

enum Keterangan: String, Codable {
    case belajarLebihGiatJanganMenyerahMinimumNilaiKKM70 = "Belajar lebih giat jangan menyerah, minimum nilai KKM 70"
    case memuaskanPertahankanDiatasMinimumNilaiKKM70 = "Memuaskan, pertahankan diatas minimum nilai KKM 70"
}

enum Semester: String, Codable {
    case genap = "Genap"
}

enum StsKkm: String, Codable {
    case lulus = "lulus"
    case tidak = "tidak"
}

// MARK: - DataTa
struct PreviewDataTa: Codable {
    let kodeTa, nama: String

    enum CodingKeys: String, CodingKey {
        case kodeTa = "kode_ta"
        case nama
    }
}

