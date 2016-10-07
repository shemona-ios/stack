//
//  TableViewCell.swift
//  stack
//
//  Copyright © 2016 test. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell,UITextFieldDelegate
{

    @IBOutlet weak var txtField: UITextField!
    override func awakeFromNib()
    {
        super.awakeFromNib()
        // Initialization code
    }
    public func configure(text: String?, placeholder: String) {
        txtField.text = text
        txtField.placeholder = placeholder
        
        txtField.accessibilityValue = text
        txtField.accessibilityLabel = placeholder
    }
    
    func returnTextOfTextField() -> String
    {
        print(txtField.text)
       return txtField.text!
    }
    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
