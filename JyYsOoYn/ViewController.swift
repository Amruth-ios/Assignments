//
//  ViewController.swift
//  JyYsOoYn
//
//  Created by Amruth Kallyam on 4/26/25.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var tableVIew: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        someFunction()
        tableVIew.dataSource = self
    }
       var country: [CountryData] = []
    func someFunction() {
        guard let url = Bundle.main.url(forResource:"ImpData", withExtension: "json") else {
            return
        }
        guard let data = try? Data(contentsOf: url) else {
            return
        }
//       let jsonDecoder = JSONDecoder()
        
        _ = JSONDecoder()
        
        // creating object
        
        
        
        do{
            self.country = try JSONDecoder().decode([CountryData].self, from: data)
        } catch {
            print("Error")
        }
        
    }
}

 extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return country.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? NameTableTableViewCell
        cell?.nameLabel.text = country[indexPath.row].name
        cell?.capitalLabel.text = country[indexPath.row].capital
        return cell ?? UITableViewCell()
    }
}



