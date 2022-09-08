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
    
//MARK: - Tableview Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // print row number which row you have selected
          //print(indexPath.row)
        // print selected row title
          //print(itemArray[indexPath.row])
        // when selected row added checked mark i.e accessory type
           //tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        // when selecting row grey colour in table row is disappear
        tableView.deselectRow(at: indexPath, animated: true)
    }

}

