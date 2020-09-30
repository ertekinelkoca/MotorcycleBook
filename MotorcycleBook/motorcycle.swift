//
//  motorcycle.swift
//  MotorcycleBook
//
//  Created by mac on 29.09.2020.
//

import Foundation
import UIKit

class Motorcycle {
    
    var name : String
    var description : String
    var image : UIImage
    
    init(modelName : String , modelDescription : String , modelView : UIImage) {
        name = modelName
        description = modelDescription
        image = modelView
    }
    
}
