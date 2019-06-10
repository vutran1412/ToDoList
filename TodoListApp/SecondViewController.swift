//
//  SecondViewController.swift
//  TodoListApp
//
//  Created by Vu Tran on 6/9/19.
//  Copyright © 2019 Vu Tran. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var todoTextField: UITextField!
    
    @IBAction func addTodoButton(_ sender: Any) {
        let itemsObject = UserDefaults.standard.object(forKey: "Items")
        
        var items:[String]
        
        if let tempItems = itemsObject as? [String] {
            items = tempItems
            items.append(todoTextField.text!)
        } else {
            items = [todoTextField.text!]
        }
        UserDefaults.standard.set(items, forKey: "Items")
        todoTextField.text = ""
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

