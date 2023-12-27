//
//  ProgramTableViewController.swift
//  UnammedApp
//
//  Created by Devere Weaver on 12/27/23.
//

import UIKit

class ProgramTableViewController: UITableViewController {
    
    // create some dummy Routines so that we can decide if the table is working
    let dayA = Routine(name: "Day A",
                       lifts: [
                        Lift(name: "Low-bar Squat", workingSets: 3, workingReps: 5, targetWeight: 335),
                        Lift(name: "Overhead Press", workingSets: 3, workingReps: 5, targetWeight: 135),
                        Lift(name: "Deadlift", workingSets: 1, workingReps: 5, targetWeight: 345)
                       ])
    let dayB = Routine(name: "Day B",
                       lifts: [
                        Lift(name: "Low-bar Squat", workingSets: 3, workingReps: 5, targetWeight: 335),
                        Lift(name: "Bench Press", workingSets: 3, workingReps: 5, targetWeight: 225),
                        Lift(name: "Power-clean", workingSets: 5, workingReps: 3, targetWeight: 135)
                       ])
    var routines: [Routine] {
        // have to use a computed property here because self relies on the routines and the routines rely on self
        // which creates a circular dependency, just just a computed property that is executed once the object has
        // be instantiated
        return [dayA, dayB]
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.leftBarButtonItem = editButtonItem

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view delegate
    // control the appearance of the view
    
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return routines.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Routine", for: indexPath)

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