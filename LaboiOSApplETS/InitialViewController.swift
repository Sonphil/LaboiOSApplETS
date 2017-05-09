//
//  InitialViewController.swift
//  LaboiOSApplETS
//
//  Created by Thanh-Son-Philippe Lam on 17-05-08.
//  Copyright © 2017 Thanh-Son-Philippe Lam. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func BtnAfficherClubs(_ sender: Any) {
        performSegue(withIdentifier: "ClubListView", sender: sender)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let backItem = UIBarButtonItem();
        backItem.title = "Retour";
        navigationItem.backBarButtonItem = backItem
    }
}

