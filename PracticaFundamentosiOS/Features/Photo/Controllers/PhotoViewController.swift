//
//  PhotoViewController.swift
//  PracticaFundamentosiOS
//
//  Created by DAVID DE LA PUENTE on 8/7/21.
//

import UIKit

class PhotoViewController: UIViewController {
    //MARK: - IBOutlets
    @IBOutlet weak var imgPhotoView: UIImageView!
    @IBOutlet weak var closeButton: UIButton!
    
    //MARK: - IBACtions
    @IBAction func closeScreen(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    
    //MARK: - Public properties
    var character: Character?
    var photoID: Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        closeButton.layer.cornerRadius = 15
        closeButton.clipsToBounds = true
        
        if let photoSelected = character?.gallery[photoID]{
            imgPhotoView.image = UIImage(named: photoSelected)
        }
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }

    

}
