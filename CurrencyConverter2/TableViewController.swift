//
//  TableViewController.swift
//  CurrencyConverter2
//
//  Created by Ali serkan Boyracı  on 7.01.2023.
//

import UIKit

class TableViewController: UIViewController {

  @IBOutlet weak var tableView: UITableView!
  override func viewDidLoad() {
    
    super.viewDidLoad()
    
    tableView.delegate = self
    tableView.dataSource = self
    tableView.separatorStyle = .none // to delete seperator between cells
    tableView.register(.init(nibName: "UserCell", bundle: nil), forCellReuseIdentifier: "CurrencyCellIdentifier") // to use cell.xib we have to register it.
    
    }
}

extension TableViewController: UITableViewDelegate {
  
}

extension TableViewController: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return currency2.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "CurrencyCellIdentifier", for: indexPath) as! UserCell
    
    cell.userNameLabel.text = coins[indexPath.row].name // we can reach XIB usernameLabel
    
    return cell
  }
  
}
