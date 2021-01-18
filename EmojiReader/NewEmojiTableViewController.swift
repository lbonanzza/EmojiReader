//
//  NewEmojiTableViewController.swift
//  EmojiReader
//
//  Created by alexeykolesnik on 18.01.2021.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {

    
    @IBOutlet weak var emojiTF: UITextField!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var descriptionTF: UITextField!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    
    
    @IBAction func textChanged(_ sender: UITextField) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}
