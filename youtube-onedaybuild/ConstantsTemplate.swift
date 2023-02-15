//
//  ConstantsTemplate.swift
//  youtube-onedaybuild
//
//  Created by Ubaka Ngene on 11/02/2023.
//

// Add your own keys below and uncomment this code

import Foundation

struct Constants {

    static var API_KEY = ""
    static var PLAYLIST_ID = ""
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    static var VIDEOCELL_ID = "VideoCell"

}
