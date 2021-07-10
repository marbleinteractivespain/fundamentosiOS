//
//  HomeViewController.swift
//  PracticaFundamentosiOS
//
//  Created by DAVID DE LA PUENTE on 2/7/21.
//

import UIKit

class VilliansViewController: UIViewController {
    
    //MARK: - Private properties
    private let charactersRepository = CharacterRepository()
    private var characters: Characters = []
    private var villians: Characters = []
    private var dataCount: Int{
       return villians.count
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
            if(character.characterType == .villian){
                villians.append(character)
            }
        }
    }
    
    // MARK: - Public functions
    func character(at indexPath: IndexPath) -> Character? {
        if(indexPath.row < villians.count) {
            return villians[indexPath.row]
        } else {
            return nil
        }
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as? DetailViewController, let viilianSelected = sender as? Character else{
            return
        }
    
        destination.character = viilianSelected
    }
}

// MARK: - TableView Extension
extension VilliansViewController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataCount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: HeroTableViewCell.cellIdentifier, for: indexPath) as? HeroTableViewCell
        
        if(indexPath.row < villians.count){
            let villian = villians[indexPath.row]
            cell?.updateViews(character: villian)
        }
        
        return cell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 185
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if(indexPath.row < villians.count){
            let character = villians[indexPath.row]
            performSegue(withIdentifier: segueToDetailFromVillians, sender: character)
        }
    }
}
