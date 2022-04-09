//
//  DetailsViewController.swift
//  100DaySwift 3HomeWork
//
//  Created by Роман Зобнин on 09.04.2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var Image: UIImageView!
    
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let image = selectedImage{
        Image.image = UIImage(named: image)
        }
    }
    override func viewWillAppear(_ animated: Bool) {
            super.viewWillAppear(animated)
            navigationController?.hidesBarsOnTap = true
        }

        override func viewWillDisappear(_ animated: Bool) {
            super.viewWillDisappear(animated)
            navigationController?.hidesBarsOnTap = false
        }
}
