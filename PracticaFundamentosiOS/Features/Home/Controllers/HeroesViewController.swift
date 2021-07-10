//
//  HomeViewController.swift
//  PracticaFundamentosiOS
//
//  Created by DAVID DE LA PUENTE on 2/7/21.
//

import UIKit

class HeroesViewController: UIViewController {
    
    //MARK: - Private properties
    private let charactersRepository = CharacterRepository()
    private var characters: Characters = []
    private var heores: Characters = []
    private var dataCount: Int{
       return heores.count
    }
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
      
        loadData()
    }
    
    // MARK: - Private functions
    private func loadData() {
        characters = charactersRepository.charactersRepo
        
        for character in characters {
            if(character.characterType == .heroe){
                heores.append(character)
            }
        }
    }
    
    // MARK: - Public functions
    func character(at indexPath: IndexPath) -> Character? {
        if(indexPath.row < heores.count) {
            return heores[indexPath.row]
        } else {
            return nil
        }
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? DetailViewController, let heroeSelected = sender as? Character else{
            return
        }
      
        destination.character = heroeSelected
    }
}

// MARK: - TableView Extension
extension HeroesViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: HeroTableViewCell.cellIdentifier, for: indexPath) as? HeroTableViewCell
        
        if(indexPath.row < heores.count){
            let hero = heores[indexPath.row]
            cell?.updateViews(character: hero)
        }
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 185
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if(indexPath.row < heores.count){
            let character = heores[indexPath.row]
            performSegue(withIdentifier: segueToDetailFromHerores, sender: character)
        }
    }
    
}
