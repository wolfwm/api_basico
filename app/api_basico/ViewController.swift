//
//  ViewController.swift
//  api_basico
//
//  Created by Matheus Gois on 21/08/19.
//  Copyright © 2019 Matheus Gois. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    //TABLE
    @IBOutlet weak var tableView: UITableView!
    
    var titulosDaAPI = [String]() // Vetor de títulos
    var idsDaAPI = [String]() // Vetor de id's

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titulosDaAPI.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell_api") else {
            let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
            cell.textLabel?.text = "Error"
            return cell
        }
        cell.textLabel?.text = titulosDaAPI[indexPath.row]
        cell.detailTextLabel?.text = titulosDaAPI[indexPath.row]
        return cell
    }
    
    
    //DADOS
    override func viewDidLoad() {
        super.viewDidLoad()
        // Chamar função que faça a requisição e adicione a cada um dos vetores acima os atributos necessários.
        //Fazer reloadate
    }
    
    //Criar aqui função de request da API
}

