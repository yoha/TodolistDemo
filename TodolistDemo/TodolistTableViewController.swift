//
//  TodolistTableViewController.swift
//  TodolistDemo
//
//  Created by Yohannes Wijaya on 10/8/16.
//  Copyright © 2016 Yohannes Wijaya. All rights reserved.
//

import UIKit

class TodolistTableViewController: UITableViewController {
    
    // MARK - Stored Properties
    
    var entries = ["Kencan sama doi", "Nonton Mr. Robot sama bros", "Code in Xcode"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.leftBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.entries.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ReusableCell", for: indexPath) as! TodolistTableViewCell
        cell.todolistLabel.text = self.entries[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    
     // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            self.entries.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let entryToBeMoved = self.entries[fromIndexPath.row]
        self.entries.remove(at: fromIndexPath.row)
        self.entries.insert(entryToBeMoved, at: to.row)
    }

}
