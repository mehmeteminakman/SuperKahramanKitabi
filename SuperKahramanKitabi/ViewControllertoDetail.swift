//
//  ViewControllertoDetail.swift
//  SuperKahramanKitabi
//
//  Created by mehmet emin akman on 27.01.2024.
//

import UIKit

class ViewControllertoDetail: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var secilenKarakterIsmi=""
    var secilenKarakterGorseli=""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image=UIImage(named: secilenKarakterGorseli)
        label.text = secilenKarakterIsmi
        
    }
    

    

}
