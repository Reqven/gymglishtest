//
//  TableViewController.swift
//  gymglishtest
//
//  Created by Manu on 28/06/2019.
//  Copyright © 2019 Manu Marchand. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var websitesArray = [Website]()
    var selectedWebsite: Website?

    override func viewDidLoad() {
        super.viewDidLoad()

        setupData()
        setupTableView()
        navigationItem.largeTitleDisplayMode = .always
    }
    
    // MARK: - Setup methods
    func setupData() {
        let gymglish = Website(
            title: "Gymglish",
            description: "Gymglish propose des cours en ligne fun, concis et personnalisés.",
            url: "https://www.gymglish.com/fr",
            image: UIImage(named: "image1")!)
        
        let vatefaireconjuguer = Website(
            title: "Vatefaireconjuguer",
            description: "Conjugaison des verbes en ligne. Grâce à notre conjugueur gratuit, conjuguez les verbes français à tous les temps et tous les modes.",
            url: "https://www.vatefaireconjuguer.com",
            image: UIImage(named: "image2")!)
        
        let thewordofthemonth = Website(
            title: "The Word of the Month",
            description: "Le mot du mois: ventre. Chaque mois, Gymglish examine un mot des titres, en anglais, pour votre anglais!",
            url: "https://www.thewordofthemonth.com/fr",
            image: UIImage(named: "image3")!)
        
        let frantastique = Website(
            title: "Frantastique",
            description: "Frantastique propose des cours d'orthographe fun, concis et personnalisés.",
            url: "https://www.frantastique.com/fr",
            image: UIImage(named: "image4")!)
        
        let anglaiscpf = Website(
            title: "Anglais CPF",
            description: "Gymglish est une formation éligible au CPF. Diplômante, notre formation est certifiée par l'Etat français (Commission Nationale de la Certification Professionnelle) et propose des cours d'anglais personnalisés.",
            url: "https://www.anglais-cpf.fr",
            image: UIImage(named: "image5")!)
        
        websitesArray.append(gymglish)
        websitesArray.append(vatefaireconjuguer)
        websitesArray.append(thewordofthemonth)
        websitesArray.append(frantastique)
        websitesArray.append(anglaiscpf)
    }
    
    func setupTableView() {
        tableView.register(UINib(nibName: "WebsiteTableViewCell", bundle: nil), forCellReuseIdentifier: "websiteCell")
    }

    // MARK: - Table view methods
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return websitesArray.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "websiteCell", for: indexPath) as! WebsiteTableViewCell
        let website = websitesArray[indexPath.row]
        
        cell.titleLabel.text = website.getTitle()
        cell.descriptionLabel.text = website.getDescription()
        cell.backgroundImageView.image = website.getImage()
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedWebsite = websitesArray[indexPath.row]
        performSegue(withIdentifier: "openWebsite", sender: self)
    }
    
    // MARK: - Navigation methods
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "openWebsite" {
            let destinationViewController = segue.destination as! WebsiteViewController
            destinationViewController.website = selectedWebsite
        }
    }
    

}
