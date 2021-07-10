//
//  DetailViewController.swift
//  PracticaFundamentosiOS
//
//  Created by DAVID DE LA PUENTE on 7/7/21.
//

import UIKit

class DetailViewController: UIViewController{
    
    //MARK: - @IBOutlets
    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var lineColor: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var surnameLabel: UILabel!
    @IBOutlet weak var rateLabel: UILabel!
    @IBOutlet weak var bioTextview: UITextView!
    @IBOutlet weak var galleryCollectionview: UICollectionView!
    
    //MARK: - Public properties
    var character: Character?
    var totalPhotos: Int = 0
    
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false
        
        galleryCollectionview.delegate = self
        galleryCollectionview.dataSource = self
        
        guard let characterDetail = character else {
            return
        }
        
        totalPhotos = characterDetail.gallery.count
        
        updateView(character: characterDetail)
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true

    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = true

        navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
        navigationController?.navigationBar.shadowImage = nil
    }
    
    //MARK: Private functions
    private func updateView(character: Character){
        update(backgroundImage: character.bg_image)
        update(name: character.name)
        update(surname: character.surname)
        update(rate: character.rating)
        update(bio: character.biography)
        update(colorLineForCharacter: character.characterType)
        
    }
    private func update(colorLineForCharacter: CharacterType ){
        switch colorLineForCharacter {
        case .heroe:
            lineColor.backgroundColor = .red
        case .villian:
            lineColor.backgroundColor = .blue
        }
    }
    
    private func update(backgroundImage: String?){
        bgImage.image = UIImage(named: backgroundImage ?? "")
    }
    
    private func update(name: String){
       nameLabel.text = name
    }
    
    private func update(surname: String){
        surnameLabel.text = surname
    }
    
    private func update(rate: Float){
       rateLabel.text = "\(String(describing: rate ))"
    }
    
    private func update(bio: String){
        bioTextview.text = bio
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? PhotoViewController, let data = sender as? (Int, Character) else{
            return
        }
        
        destination.character = data.1
        destination.photoID = data.0
    }
}

// MARK: - DetailViewController Extension
extension DetailViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return totalPhotos
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotoGalleryCollectionViewCell.cellIdentifier, for: indexPath) as? PhotoGalleryCollectionViewCell
        
        if(indexPath.row < totalPhotos){
            let photo = character?.gallery[indexPath.row]
            cell?.updateView(image: photo)
        }
        
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width:collectionView.frame.width / 2 - 30, height: 130)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        if(indexPath.row < totalPhotos){
            let photoID = indexPath.row
            let data = (photo: photoID, character: character)
            
            
            performSegue(withIdentifier: segueToPhotoGallery, sender: data)
        }
    }
}
