//
//  MenuTVC.swift
//  EmailExample
//
//  Created by Joshua Nowak on 9/26/17.
//  Copyright © 2017 Nowak. All rights reserved.
//

import UIKit

class MenuTVC: UITableViewController {
    
    var dataDictionary: [String:Array<Email>] = [:]
    var selectedRow = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath)

        // Configure the cell...
        let keywords = Array(dataDictionary.keys)
        cell.textLabel?.text = keywords[indexPath.row]

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //TODO: react to user selecting row
        //I want the detail view controller to update based on the row that I selected
        
        //TODO: get cell information
        let keywords = Array(dataDictionary.keys)
        selectedRow = keywords[indexPath.row]
        
        //call segue manually
        performSegue(withIdentifier: "cellSelected", sender: self)
    }
 

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        let destVC = segue.destination as! RootTVC
        destVC.emails = dataDictionary[selectedRow]!
        //1. which button got pressed
        //2. up-to-date data

    }
    

}
