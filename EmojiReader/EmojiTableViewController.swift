//
//  TableViewController.swift
//  EmojiReader
//
//  Created by alexeykolesnik on 16.01.2021.
//

import UIKit

class EmojiTableViewController: UITableViewController {
    
    var objects = [
        Emoji(emoji: "🥰", name: "Love", description: "It's love make to do", isFavourit: false),
        Emoji(emoji: "🤙🏻", name: "Ganja", description: "Let's ganja motherfucker!", isFavourit: false),
        Emoji(emoji: "🧑🏿‍🦱", name: "Nigger", description: "I'm just nigger", isFavourit: false)
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Emoji Readering"
        self.navigationItem.leftBarButtonItem = self.editButtonItem
        
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return objects.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "emojiCell", for: indexPath) as! EmojiTableViewCell

        let object = objects[indexPath.row]
        cell.set(object: object)
        return cell
    }
    
    
    //delete objects
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .delete
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            objects.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    
    //move objects
    
    
}
