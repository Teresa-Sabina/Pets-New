//
//  PetDetailsViewController.swift
//  Pets
//
//  Created by teresa sabina on 13/07/21.
//
import UIKit

class PetDetailsViewController: UIViewController, Storyboarded {

    @IBOutlet weak var lblTemperarment: UILabel!
    @IBOutlet weak var lblLifeSpan: UILabel!
    @IBOutlet weak var lblWeight: UILabel!
    @IBOutlet weak var lblHeight: UILabel!
    var viewModel:PetDetailsViewModelProtocal!  // ViewModel
    weak var coordinator: Coordinator?        // Coordinator
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       setupUI()
        
        //self.view.addSubview(emailLabel)
    }
    
    func setupUI() {
        self.navigationItem.title = viewModel.breadName
        lblHeight.text = viewModel.height
        lblWeight.text = viewModel.weight
        lblLifeSpan.text = viewModel.lifeSpan
        lblTemperarment.text = viewModel.temperament
    }
    
}
