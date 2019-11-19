//
//  AnimalDetailsViewController.swift
//  AC-iOS-Multiple-MVC
//
//  Created by Gregory Keeley on 11/18/19.
//  Copyright © 2019 AC-iOS. All rights reserved.
//

import UIKit

class AnimalDetailsViewController: UIViewController {
    
    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var animalDescription: UILabel!
    
    var animal: ZooAnimal?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }
    func updateUI() {
        guard let theAnimal = animal else {
            fatalError("Verify the segue for animalDetailsViewController")
        }
        animalImage.image = UIImage(named: theAnimal.imageNumber.description)
        animalDescription.text = theAnimal.info
    }
    
}
