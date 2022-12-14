//
//  ViewController.swift
//  TodoeyProject
//
//  Created by YE002 on 07/09/22.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    var itemArray = ["Find Bike", "Find Rider", "Start Journey"]

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
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
//MARK: - Add New Items Bar Button
    
    @IBAction func addButtonPressed(_ sender: UIBarButtonItem) {
        
        var textField = UITextField()
        
        let alert = UIAlertController(title: "Add New Todoey Item", message: "", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "Add Item", style: .default) { (action) in
            //What will Happen Once the user clicks the Add Item Button on our UIAlert
            print(textField.text!)
            self.itemArray.append(textField.text!)
            // after appending data in array we need to relaod otherwise not shown data
            self.tableView.reloadData()
        }
        alert.addTextField { (alertTextField) in
            alertTextField.placeholder = "Create new item"
            textField = alertTextField
            // Add button click excute this one then click Add Item
            print(alertTextField.text)
            print("now")
        }
        // Add Item Button Shows
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
    }
    
}

