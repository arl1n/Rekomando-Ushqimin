//
//  ViewController.swift
//  Sugjero Ushqimin
//
//  Created by student5 on 9/19/18.
//  Copyright © 2018 Arlin Nerguti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var fotoja: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    var fotot:[String] = ["burger", "doner", "pasta", "pizza", "steak"]
    var cmimet:[String:Double] = ["burger":2.5, "doner":2.0, "pasta":4.5, "pizza":5.0, "steak":7.0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func btnSU(_ sender: Any) {
    
        let nrRandom:Int = Int(arc4random_uniform(UInt32(fotot.count)))
        let fotoRandom:String = fotot[nrRandom]
        fotoja.image = UIImage.init(named: fotoRandom)
        
        let teksti:String = "Ushqimi i rekomanduar per sot eshte \(fotoRandom) dhe kushton \(cmimet[fotoRandom]!) Euro"
        lbl.text = teksti
    }

}

