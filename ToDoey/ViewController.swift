//
//  ViewController.swift
//  ToDoey
//
//  Created by George Onwundinjo on 04/02/2019.
//  Copyright © 2019 George Onwundinjo. All rights reserved.
//

import UIKit

class TodoListTableViewController : UITableViewController {
    
    let itemArray = ["Mya", "Saffron", "Rudi"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    //Mark - Tableview Data source methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       let cell = tableView.dequeueReusableCell(withIdentifier: "todoListCell", for: indexPath)
        
       cell.textLabel?.text = itemArray[indexPath.row]
        
        return cell
    }
    
    //Mark - Tableview delegate methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        //print(itemArray[indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        
    }
    
    
    
    
    
    


}

