//
//  ViewController.swift
//  ImageViewer
//
//  Created by Jared Bates on 3/30/18.
//  Copyright © 2018 jared. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var pictures = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("gc") {
                pictures.append(item)
            }
        
        print(pictures)
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

