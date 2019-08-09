//
//  GameTableViewController.swift
//  demotableview3
//
//  Created by Daniel on 2019/8/9.
//  Copyright © 2019 Daniel. All rights reserved.
//

import UIKit

class GameTableViewController: UITableViewController {
    
    var games = [Game(name: "Borderlands2", intro: "Games", imageName: "borderlands2"), Game(name: "Tombraider", intro: "A survivor is born", imageName: "tombraider"), Game(name: "Civilizaton", intro: "Build. Conquer. Inspire", imageName: "civilization"), Game(name: "Divinity", intro: "Definitive Edition", imageName: "divinity"), Game(name: "Darkest Dungeon", intro: "Games", imageName: "darkestdungeon"), Game(name: "Batman: Arkham City GOTY", intro: "The Dark Knight descends", imageName: "batman"), Game(name: "OXENFREE", intro: "Choice-Based Narrative Games", imageName: "oxenfree"), Game(name: "SUPERHOT", intro: "Games", imageName: "superhot"), Game(name: "Kensho", intro: "Open the door to a new word", imageName: "kensho")]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 180
        tableView.estimatedRowHeight = 0

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return games.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "gameCell", for: indexPath) as! GameTableViewCell
        
        let game = games[indexPath.row]
        
        cell.gameName.text = game.name
        cell.gameIntro.text = game.intro
        cell.photoimageView.image = UIImage(named: game.imageName)

        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
