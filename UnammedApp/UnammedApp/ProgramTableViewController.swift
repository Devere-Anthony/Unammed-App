//
//  ProgramTableViewController.swift
//  UnammedApp
//
//  Created by Devere Weaver on 12/27/23.
//

import UIKit

class ProgramTableViewController: UITableViewController {
    
    // create some dummy Routines so that we can decide if the table is working
    var routines: [Routine] =
            [ Routine(name: "Day A",
                       lifts: [
                        Lift(name: "Low-bar Squat", workingSets: 3, workingReps: 5, targetWeight: 335),
                        Lift(name: "Overhead Press", workingSets: 3, workingReps: 5, targetWeight: 135),
                        Lift(name: "Deadlift", workingSets: 1, workingReps: 5, targetWeight: 345)
                       ],
                       emoji: "🦵🏾"),
              Routine(name: "Day B",
                       lifts: [
                        Lift(name: "Low-bar Squat", workingSets: 3, workingReps: 5, targetWeight: 335),
                        Lift(name: "Bench Press", workingSets: 3, workingReps: 5, targetWeight: 225),
                        Lift(name: "Power-clean", workingSets: 5, workingReps: 3, targetWeight: 135)
                       ],
                       emoji: "🏋🏾‍♀️")
    ]
    
    // Uncomment this out when ready to start adding routines and building the array from scratch
    // instead of manually creating the array like above
    //var routines: [Routine] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 44.0
    }
    
//==============================================================================
// MARK: TABLE VIEW DELEGATE
//==============================================================================
    @IBAction func editButtonTapped(_ sender: UIBarButtonItem) {
        /* enable editing of the table view */
        let tableViewEditingMode = tableView.isEditing
        tableView.setEditing(!tableViewEditingMode, animated: true)
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        /* determine the editing style of the cells */
        return .delete
    }
    
    override func viewWillAppear(_ animated: Bool) {
        /* reload the data source each time a user returns to the table */
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
//==============================================================================
// MARK: TABLE VIEW DATA SOURCE FUNCTIONS
//==============================================================================
    override func numberOfSections(in tableView: UITableView) -> Int {
        /* return the number of sections for the table view */
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        /* return the number of routines (rows) for the table view */
        return routines.count
    }
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        /* add the Routine model objects contents to the cell */
        let cell = tableView.dequeueReusableCell(withIdentifier: "Routine", for: indexPath)
        let routine = routines[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = routine.name
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        /* add deleting functionality during editing mode */
        if editingStyle == .delete {
            routines.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        /* reorder the rows in editing mode */
        let movedRoutine = routines.remove(at: fromIndexPath.row)
        routines.insert(movedRoutine, at: to.row)
    }
    
//==============================================================================
 

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
