//
//  AnimalTableViewCell.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Gregory Keeley on 11/18/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class AnimalTableViewCell: UITableViewCell {

    @IBOutlet weak var cellTitle: UILabel!
       @IBOutlet weak var cellCountry: UILabel!
    @IBOutlet weak var animalImage: UIImageView!
    
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        animalImage.layer.cornerRadius = animalImage.frame.width / 1.5
//    }
    func configureCell(for animal: ZooAnimal) {
        cellTitle.text = animal.name
        cellCountry.text = animal.origin
        animalImage.image = UIImage(named: animal.imageNumber.description)
    }
}
