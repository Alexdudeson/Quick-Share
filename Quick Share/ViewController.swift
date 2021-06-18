//
//  ViewController.swift
//  Quick Share
//
//  Created by Alexey Yarov on 18.06.2021.
//  Copyright © 2021 Alexey Yarov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource
    {

    @IBOutlet weak var tableView: UITableView!
    
    let reuseIndettifier = "tableViewCell"
    var dummyObjects = ["Hello", "there", "general", "Kenobi"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell: MyTableViewCell = tableView.dequeueReusableCell(withIdentifier: reuseIndettifier, for: indexPath)
            as! MyTableViewCell  //as! casting, because we are dead shure!
        //if there are no cells, new one will be created
        //if they are cells, but they are out of the screen, so we are not seeing them, system will recycle them, due to lack of memory
        cell.myImageView.image = UIImage (named: "polaroid")
        //grabbing correct data from array, depending where we are in cells
        return cell
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        //we want 1 scrolling list, so we need to definr number of sections in our tableView
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dummyObjects.count
        //method, that tells our system, how many cells it need to prepare for us. Number of raws inside section.
        //number of raws that we have data to fill with
    }
    
    
}

