//
//  TableTableViewController.swift
//  100DaySwift 3HomeWork
//
//  Created by Роман Зобнин on 06.04.2022.
//

import UIKit

class TableViewController: UITableViewController {
    
    var picturesArray = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        let fm = FileManager.default
        let patch = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: patch)
        
        for item in items {
            if item.hasPrefix("nssl"){
                picturesArray.append(item)
            }
        }
    }
  
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return picturesArray.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = picturesArray[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailsViewController {
            vc.selectedImage = picturesArray[indexPath.row]
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
