//
//  SplashViewController.swift
//  PracticaFundamentosiOS
//
//  Created by DAVID DE LA PUENTE on 2/7/21.
//

import UIKit

class SplashViewController: UIViewController {
    // MARK: - IBOutlets
    @IBOutlet weak var activityindicator: UIActivityIndicatorView!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = true
        activityindicator.startAnimating()
        
        loadData()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = true
       
        activityindicator.startAnimating()
    }
    
    //MARK: - Private methods
    private func loadData(){
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)){
            self.performSegue(withIdentifier: segueToHome, sender: nil)
        }
    }
}
