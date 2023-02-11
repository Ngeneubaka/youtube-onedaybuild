//
//  ViewController.swift
//  youtube-onedaybuild
//
//  Created by Ubaka Ngene on 07/02/2023.
//

import UIKit

class ViewController: UIViewController {
    
    var model = Models()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
    }


}

