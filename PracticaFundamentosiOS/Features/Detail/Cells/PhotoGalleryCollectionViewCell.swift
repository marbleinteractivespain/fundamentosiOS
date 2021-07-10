//
//  PhotoGalleryTableViewCell.swift
//  PracticaFundamentosiOS
//
//  Created by DAVID DE LA PUENTE on 8/7/21.
//

import UIKit

class PhotoGalleryCollectionViewCell: UICollectionViewCell {
    //MARK - Public properties
    static let cellIdentifier: String = String(describing: PhotoGalleryCollectionViewCell.self)

    //MARK - IBOutlets
    @IBOutlet weak var image_cell: UIImageView!
    
    //MARK: Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        image_cell.image = nil
    }

    func updateView(image: String?){
        image_cell.image = UIImage(named: image ?? "")
    }


}
