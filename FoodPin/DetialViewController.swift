//
//  DetialViewController.swift
//  FoodPin
//
//  Created by 大可立青 on 15/4/15.
//  Copyright (c) 2015年 大可立青. All rights reserved.
//

import UIKit

class DetialViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var restautantImageView: UIImageView!
    var restaurantImage:String!
    var restaurant:Restaurant!
    override func viewDidLoad() {
        super.viewDidLoad()
        title = self.restaurant.name
        
        self.tableView.estimatedRowHeight = 36
        self.tableView.rowHeight = UITableViewAutomaticDimension
        self.tableView.backgroundColor = UIColor(red: 240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0, alpha: 0.2)
        self.tableView.tableFooterView = UIView(frame: CGRectZero)
        self.tableView.separatorColor = UIColor(red:240.0/255.0, green: 240.0/255.0, blue: 240.0/255.0,alpha: 0.8)
        //self.restaytantImageView.image = UIImage(named: restaurantImage)
        self.restautantImageView.image = UIImage(named: restaurant.image)
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.hidesBarsOnSwipe = false
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! DetialTableViewCell
        switch indexPath.row{
        case 0:
            cell.fieldLabel.text = "Name"
            cell.valueLabel.text = self.restaurant.name
        case 2:
            cell.fieldLabel.text = "Location"
            cell.valueLabel.text = self.restaurant.location
        case 1:
            cell.fieldLabel.text = "Type"
            cell.valueLabel.text = self.restaurant.type
        case 3:
            cell.fieldLabel.text = "Been Here"
            cell.valueLabel.text = self.restaurant.isVisited ? "Yes,I've been here before" : "No."
        default:
            cell.fieldLabel.text = ""
            cell.valueLabel.text = ""
        }
        cell.backgroundColor = UIColor.clearColor()
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

}
