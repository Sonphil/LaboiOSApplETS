//
//  ClubTableViewController.swift
//  LaboiOSApplETS
//
//  Created by Thanh-Son-Philippe Lam on 17-05-08.
//  Copyright © 2017 Thanh-Son-Philippe Lam. All rights reserved.
//

import UIKit

class ClubTableViewController: UITableViewController {

    //MARK: Properties
    var clubs = [Club]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        loadClubs()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return clubs.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "clubCell"
        
        // Recyclage des vues pour les cellules
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? ClubTableViewCell else {
            fatalError("Ce n'est pas une instance de ClubTableViewCell");
        }

        // Configure the cell...
        let club = clubs[indexPath.row]
        
        cell.clubNameLabel.text = club.nom;
        cell.clubIconImageView.image = club.icone;
        cell.localLabel.text = club.local;
        cell.accessoryType = .detailDisclosureButton;

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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    private func loadClubs() {
        let iconeAce = UIImage(named: "ic_ace")
        let iconeConjure = UIImage(named: "ic_conjure")
        let iconeApplets = UIImage(named: "ic_applets")
        let urlAce = URL(string: "http://www.avioncargoets.com/");
        let urlConjure = URL(string: "http://conjure.etsmtl.ca/");
        let urlApplets = URL(string: "https://clubapplets.ca/");
        
        guard let club1 = Club(nom: "A.C.E", icone: iconeAce!, local: "A-1234", site: urlAce!) else {
            fatalError("unable to instantiate club1");
        }
        
        guard let club3 = Club(nom: "Applets", icone: iconeApplets!, local: "A-1234", site: urlApplets!) else {
            fatalError("unable to instantiate club3");
        }
        
        guard let club2 = Club(nom: "Conjure", icone: iconeConjure!, local: "A-1234", site: urlConjure!) else {
            fatalError("unable to instantiate club2");
        }
        
        clubs += [club1, club2, club3]
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let row = indexPath.row;
        
        UIApplication.shared.openURL(clubs[row].site);
        tableView.deselectRow(at: indexPath, animated: true);
    }
    
    override func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        let row = indexPath.row;
        let club: Club = clubs[row];
        
        let alert = UIAlertController(title: club.nom, message: "Cliquez sur la rangée pour accéder au site web du club", preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
}
