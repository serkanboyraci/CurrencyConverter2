//
//  FirstViewController.swift
//  CurrencyConverter2
//
//  Created by Ali serkan Boyracı  on 7.01.2023.
//

import UIKit

class FirstViewController: UIViewController {

  @IBOutlet weak var currencyLabel: UILabel!
  override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
  @IBAction func toSeeCurrenciesClicked(_ sender: Any) {
    let storyBoard = UIStoryboard.init(name: "Main", bundle: nil)
    if let vc = storyBoard.instantiateViewController(withIdentifier: "TableViewController") as? TableViewController {
      vc.modalPresentationStyle = .fullScreen // to see full screen TableViewVC
      present(vc, animated: true)
    }
    
  }
  
}
