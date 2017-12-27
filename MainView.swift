//
//  MainView.swift
//  TemperatureConverter
//
//  Created by Milap Jhumkhawala on 03/08/16.
//  Copyright © 2016 Milap Jhumkhawala. All rights reserved.
//

import UIKit
import SnapKit

class MainView: UIViewController, UITableViewDataSource, UITableViewDelegate, UISearchResultsUpdating {
    var mainTable = UITableView()
    var unitNames = [ "Area","Currency","Energy", "Length","Power", "Pressure", "Speed", "Temperature", "Time", "Volume", "Weight" ]
    var filteredUnits = [String]()
    var resultSearchController : UISearchController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func setup(){
        self.view.addSubview(mainTable)
        mainTable.delegate = self
        mainTable.dataSource = self
        mainTable.registerClass(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        mainTable.snp_makeConstraints { (make) -> Void in
            make.size.equalToSuperview()
        }
        self.resultSearchController = UISearchController(searchResultsController: nil)
        self.resultSearchController.searchResultsUpdater = self
        self.resultSearchController.dimsBackgroundDuringPresentation = false
        self.resultSearchController.searchBar.sizeToFit()
        self.mainTable.tableHeaderView = self.resultSearchController.searchBar
        self.mainTable.reloadData()
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) ->
        Int { if (self.resultSearchController.active) {
            return self.filteredUnits.count
            }
            return unitNames.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath:
        NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = mainTable.dequeueReusableCellWithIdentifier("Cell")! as UITableViewCell
        cell.textLabel?.text = unitNames[indexPath.row]
        if (self.resultSearchController.active)
        {
            cell.textLabel?.text = self.filteredUnits[indexPath.row]
        }
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let indexPath = mainTable.indexPathForSelectedRow!
        let currentCell = mainTable.cellForRowAtIndexPath(indexPath)! as UITableViewCell
        if currentCell.textLabel!.text == "Temperature" {
            self.performSegueWithIdentifier("Temperature", sender: self)
        }
       
        if currentCell.textLabel!.text == "Time" {
            self.performSegueWithIdentifier("Time", sender: self)
        }
        if currentCell.textLabel!.text == "Area" {
            self.performSegueWithIdentifier("Area", sender: self)
        }
        if currentCell.textLabel!.text == "Energy" {
            self.performSegueWithIdentifier("Energy", sender: self)
        }
        if currentCell.textLabel!.text == "Length" {
            self.performSegueWithIdentifier("Length", sender: self)
        }
    }
    
    func updateSearchResultsForSearchController(searchController: UISearchController)
    {
        self.filteredUnits.removeAll(keepCapacity: false)
        let searchPredicate = NSPredicate(format: "SELF CONTAINS[c] %@", searchController.searchBar.text!)
        let array = (self.unitNames as NSArray).filteredArrayUsingPredicate(searchPredicate)
        self.filteredUnits = array as! [String]
        self.mainTable.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

