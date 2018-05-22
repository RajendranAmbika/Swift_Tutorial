//
//  ViewController.swift
//  Tableview_Sample
//
//  Created by Rajendran Eshwaran on 5/22/18.
//  Copyright © 2018 RG Group of Industries. All rights reserved.
//  This sample for tutorial purpose only

import UIKit

class ViewController: UIViewController ,UITableViewDelegate , UITableViewDataSource{
    
    let elements = ["camel","cheetah","deer","dog","elephant","horse","kingkong","Lion","panda", "parrot","snake","Squrrel","Tiger"]
    
   
    @IBOutlet weak var customTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        customTableView.delegate = self;
        customTableView.dataSource = self;
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! TableViewCell
        
        cell.animalLbl.text = elements[indexPath.row]
        cell.animalView.image = UIImage(named: elements[indexPath.row])
        
        return cell
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

