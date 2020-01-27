//
//  WebsitesTableViewController.swift
//  WKWebViewAndUIAlertCOntroller
//
//  Created by Elena Kulakova on 2020-01-27.
//  Copyright © 2020 Elena Kulakova. All rights reserved.
//

import UIKit

class WebsitesTableViewController: UITableViewController {

    let dataSource = DataSource()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "WEB SITES"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.websites.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            cell.textLabel?.text = dataSource.websites[indexPath.row].name
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(identifier: "WKWebViewController") as? WKWebViewController {
            //let cell = tableView.cellForRow(at: indexPath)
            vc.urlPath = dataSource.websites[indexPath.row].url
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
