//
//  ViewController.swift
//  Project4
//
//  Created by Christian Roese on 10/5/18.
//  Copyright © 2018 Nothin But Scorpions, LLC. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {
  
  var websites = ["apple.com", "hackingwithswift.com", "google.com"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
    
    title = "Web Browser"
    navigationController?.navigationBar.prefersLargeTitles = true
  }
  
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return websites.count
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController
    {
      vc.websites = websites
      vc.initialSite = websites[indexPath.row]
      navigationController?.pushViewController(vc, animated: true)
    }
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Site", for: indexPath)
    
    cell.textLabel?.text = websites[indexPath.row]
    
    return cell
  }
}

