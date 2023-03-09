//
//  CompleteViewController.swift
//  ToDoList
//
//  Created by Admin on 28/04/22.
//

import UIKit

class CompleteViewController: UIViewController {

    @IBOutlet weak var toDoLabel: UILabel!
    var toDo = ToDo()
    var toDoTableVC : ToDoTableViewController? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        if toDo.important{
            toDoLabel.text = "❗️" + toDo.name
        }else {
        toDoLabel.text = toDo.name
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func CompleteTapped(_ sender: Any) {
        if let toDos = toDoTableVC?.toDos {
            var index = 0
            for x in toDos {
                if x.name == toDo.name {
                    toDoTableVC?.toDos.remove(at: index)
                    toDoTableVC?.tableView.reloadData()
                    navigationController?.popViewController(animated: true)
                    return
                }
                index += 1
            }
        }
    }
    
   

}
