//
//  ViewController.swift
//  teratail_44462
//
//  Created by KentarOu on 2016/08/16.
//  Copyright © 2016年 KentarOu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    enum CellType {
        case Cell1, Cell2, Cell3
    }
    
    var dataArray: [String] = []
    var cellTypes: [CellType] = [.Cell1, .Cell3, .Cell1, .Cell1, .Cell3, .Cell3, .Cell1, .Cell2, .Cell3, .Cell1, .Cell1, .Cell3, .Cell3, .Cell1, .Cell3, .Cell1, .Cell3, .Cell1]
    
    func createData() {
        dataArray += ["teratail_44462,teratail_44462,teratail_44462"]
        dataArray += ["teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462"]
        dataArray += ["teratail_44462,teratail_44462, teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462"]
        dataArray += ["teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462"]
        dataArray += ["teratail_44462"]
        dataArray += ["teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462"]
        dataArray += ["teratail_44462,teratail_44462,teratail_44462"]
        dataArray += ["teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462"]
        dataArray += ["teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462"]
        dataArray += ["teratail_44462"]
        dataArray += ["teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462"]
        dataArray += ["teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462"]
        dataArray += ["teratail_44462,teratail_44462,teratail_44462"]
        dataArray += ["teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462"]
        dataArray += ["teratail_44462,teratail_44462,teratail_44462"]
        dataArray += ["teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462"]
        dataArray += ["teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462"]
        dataArray += ["teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462,teratail_44462"]
    }
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createData()
        
        tableView.estimatedRowHeight = 20
        tableView.rowHeight = UITableViewAutomaticDimension
    }
    
    // Row Count
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    // Generate Cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let type = cellTypes[indexPath.row]
        switch type {
        case .Cell1:
            let cell = tableView.dequeueReusableCellWithIdentifier("Cell1", forIndexPath: indexPath) as! CustomCell1
            cell.label.text = dataArray[indexPath.row]
            return cell
        case .Cell2:
            let cell = tableView.dequeueReusableCellWithIdentifier("Cell2", forIndexPath: indexPath) as! CustomCell2
            cell.label.text = dataArray[indexPath.row]
            return cell
        case .Cell3:
            let cell = tableView.dequeueReusableCellWithIdentifier("Cell3", forIndexPath: indexPath) as! CustomCell3
            cell.label.text = dataArray[indexPath.row]
            return cell
        }
    }
}