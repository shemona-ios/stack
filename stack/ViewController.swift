//
//  ViewController.swift
//  stack
//
//  Copyright © 2016 test. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate
{
    @IBOutlet weak var tbl: UITableView!
    var cell = TableViewCell()
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        cell = tbl.dequeueReusableCell(withIdentifier: "CELL") as! TableViewCell
        cell.configure(text: "", placeholder: "EnterText")
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int
    {
        return 1
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool
    {
        
        
        print( cell.returnTextOfTextField() )
        print(cell.txtField.text)
        cell.txtField .resignFirstResponder()
        return true
    }
    
}

