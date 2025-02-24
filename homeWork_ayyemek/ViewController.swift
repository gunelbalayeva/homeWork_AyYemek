//
//  ViewController.swift
//  homeWork_ayyemek
//
//  Created by User on 19.02.25.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource, UITableViewDelegate {
   
    @IBOutlet weak var tableView: UITableView!
    var planList: [PlanModel] = [
          PlanModel(titleName: "Kategoriya", subtitleName: "Elite", imageName: "select"),
          PlanModel(titleName: "Paketin qiyməti", subtitleName: "30₼", imageName: "select"),
          PlanModel(titleName: "Paketin gün sayı", subtitleName: "3 gün", imageName: "select"),
          PlanModel(titleName: "Başlanma tarixi", subtitleName: "16 fevral", imageName: "select"),
          PlanModel(titleName: "Bitmə tarixi", subtitleName: "20 fevral", imageName: "select")
      ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlanViewCell", for: indexPath) as? PlanViewCell
        let item = planList[indexPath.row]
        cell?.titleLabel.text = item.titleName
        cell?.subtitleLabel.text = item.subtitleName
        cell?.imageSelect.image = UIImage(named: item.imageName)
        return cell ?? UITableViewCell()
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) as? PlanViewCell {
            cell.toggleImageVisibility()
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}










