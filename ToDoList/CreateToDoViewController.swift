//
//  CreateToDoViewController.swift
//  ToDoList
//
//  Created by Admin on 28/04/22.
//

import UIKit

class CreateToDoViewController: UIViewController {
    
    
    @IBOutlet weak var importantswitch: UISwitch!
    @IBOutlet weak var nameTextField: UITextField!
    var toDoTableVC : ToDoTableViewController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func addTapped(_ sender: Any) {
        let newToDo = ToDo()
        if let name = nameTextField.text{
            newToDo.name = name
            newToDo.important = importantswitch.isOn
            toDoTableVC?.toDos.append(newToDo)
            toDoTableVC?.tableView.reloadData()
            navigationController?.popViewController(animated: true)
            
            
        }
    }
    
}
