//
//  TableViewController.swift
//  100DaysOfSwiftProject4
//
//  Created by HexaHack on 09.06.2020.
//  Copyright © 2020 HexaHack. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var websites = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

          websites = ["hackingwithswift.com", "apple.com"]
    
    }

    // MARK: - Table view data source



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return websites.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = websites[indexPath.row]
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "webView") as? ViewController {
            vc.websites = self.websites
            vc.selectedWebsite = websites[indexPath.row]
            
            navigationController?.pushViewController(vc, animated: true)
        }
    }

}
