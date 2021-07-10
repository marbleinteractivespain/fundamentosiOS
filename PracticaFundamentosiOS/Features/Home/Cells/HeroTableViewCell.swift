//
//  HeroTableViewCell.swift
//  PracticaFundamentosiOS
//
//  Created by DAVID DE LA PUENTE on 6/7/21.
//

import UIKit

class HeroTableViewCell: UITableViewCell {
    //MARK: - Public Properties
    static let cellIdentifier: String = String(describing: HeroTableViewCell.self)
    
    //MARK: - IBOutlets
    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var imageHero: UIImageView!
    @IBOutlet weak var labelNameHero: UILabel!
    @IBOutlet weak var labelSurnameHero: UILabel!
    @IBOutlet weak var labelRatingHero: UILabel!
    @IBOutlet weak var viewCell: UIView!
    
    //MARK: - Lifecycle
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //Disable highlited on cell
        selectionStyle = .none
    
    }

    override func prepareForReuse() {
        super.prepareForReuse()
        
        imageHero.image = nil
        labelNameHero.text = nil
        labelSurnameHero.text = nil
        labelRatingHero.text = nil
    }
    
    //MARK - public functions
    func updateViews(character: Character){
        update(image: character.img_character)
        update(name: character.name)
        update(surname: character.surname)
        update(rate: character.rating)
    }

    //MARK - private functions
    private func update(image: String?){
        imageHero.image = UIImage(named: image ?? "")
    }
    private func update(name: String){
        labelNameHero.text = name 
    }
    private func update(surname: String){
        labelSurnameHero.text = surname
    }
    private func update(rate: Float){
        labelRatingHero.text = "Rate: \(String(describing: rate ))"
    }
}
