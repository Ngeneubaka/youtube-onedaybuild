//
//  Model.swift
//  youtube-onedaybuild
//
//  Created by Ubaka Ngene on 07/02/2023.
//

import Foundation

class Models {
    
    func getVideos() {
        
        
        // Create a URL Object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            return
        }
        
        // Create a URL Session Object
        let session = URLSession.shared
        
        // Get a data task for the URL Session Object
        let dataTask = session.dataTask(with: url!) { data, response, error in
            
            // Check if there were any errors
            if error != nil || data == nil {
                return
            }
            
            // Parsing the data into video objects
        }
        
        // Kick-off the task
        dataTask.resume()
    }
}
