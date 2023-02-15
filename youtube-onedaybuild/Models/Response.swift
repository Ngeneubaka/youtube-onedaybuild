//
//  Response.swift
//  youtube-onedaybuild
//
//  Created by Ubaka Ngene on 11/02/2023.
//

import Foundation

struct Response: Decodable {
    
    var items: [Video]?
    
    enum  Codingkeys:String, CodingKey {
        
        case items
    }
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: Codingkeys.self)
        
        self.items = try container.decode([Video].self, forKey: .items)
    }
}
