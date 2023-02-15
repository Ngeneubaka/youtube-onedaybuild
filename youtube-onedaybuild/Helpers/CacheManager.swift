//
//  CacheManager.swift
//  youtube-onedaybuild
//
//  Created by Ubaka Ngene on 15/02/2023.
//

import Foundation

class CacheManager {
    
    static var cache = [String:Data]()
    
    static func setVideoCache(_ url:String, _ data:Data?) {
        
        // Store the image data and use the url as the key
         cache[url] = data
    }
    
    static func getVideoCache(_ url:String) -> Data? {
        
        // try to get the data for the speciifed url
        return cache[url]
    }
}
