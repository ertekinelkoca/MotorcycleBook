//
//  detailsVC.swift
//  MotorcycleBook
//
//  Created by mac on 29.09.2020.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var selectedMotorcycle : Motorcycle?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        nameLabel.text = selectedMotorcycle?.name
        descriptionLabel.text = selectedMotorcycle?.description
        imageView.image = selectedMotorcycle?.image
    }
    
}
