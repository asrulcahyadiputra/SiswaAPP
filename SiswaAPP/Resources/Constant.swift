//
//  Constant.swift
//  SiswaAPP
//
//  Created by Asrul Cahyadi Putra on 03/04/21.
//

import Foundation
import SwiftKeychainWrapper




//Storage
let userToken = KeychainWrapper.standard.string(forKey: "userToken")
let kodeKelas = KeychainWrapper.standard.string(forKey: "kodeKelas")



let app_id = ""
let api_key = ""
let base_url = "https://api.simkug.com/api/mobile-sekolah"
let login_url = "\(base_url)/login-siswa"
let profile_url = "\(base_url)/profile-siswa"
let mapel_url = "\(base_url)/mata-pelajaran"
let detailMapel_url = "\(base_url)/mata-pelajaran-detail"
