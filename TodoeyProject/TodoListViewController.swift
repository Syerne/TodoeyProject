//
//  ViewController.swift
//  TodoeyProject
//
//  Created by YE002 on 07/09/22.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    let itemArray = ["Find Bike", "Find Rider", "Start Journey"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
//MARK: - Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TodoItemCell", for: indexPath)
        cell.textLabel?.text = itemArray[indexPath.row]
        return cell
    }

}

