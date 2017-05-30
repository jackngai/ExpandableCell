//
//  TableViewController.swift
//  ExpandableCell
//
//  Created by Jack Ngai on 5/30/17.
//  Copyright © 2017 Jack Ngai. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let myArray = [#imageLiteral(resourceName: "river"), #imageLiteral(resourceName: "sky"), #imageLiteral(resourceName: "mountain")]


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "expandCell")
        
        //tableView.rowHeight = UITableViewAutomaticDimension
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "expandCell", for: indexPath) as? TableViewCell
        cell?.label.text = "Tap to see the picture below!"
        cell?.myImageView.image = myArray[indexPath.row]
        return cell ?? tableView.dequeueReusableCell(withIdentifier: "expandCell", for: indexPath)
    }


}

