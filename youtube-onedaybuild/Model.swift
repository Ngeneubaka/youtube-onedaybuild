//
//  Model.swift
//  youtube-onedaybuild
//
//  Created by Ubaka Ngene on 07/02/2023.
//

import Foundation

protocol ModelDelegate {
    func videosFetched(_ videos: [Video])
}

class Model {
    
    var delegate:ModelDelegate?
    
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
            
            do {
                // Parsing the data into video objects
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                
                if response.items != nil {
                    
                    DispatchQueue.main.async {
                        // Call the "videosfetched" method of the delegate
                        self.delegate?.videosFetched(response.items!)
                    }
                }
                
                // dump(response)
            }
            catch {
                
            }
            
        }
        
        // Kick-off the task
        dataTask.resume()
    }
}
