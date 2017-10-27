//
//  MainController.swift
//  ProductSelectTest
//
//  Created by Wayne Ohmer on 10/26/17.
//  Copyright © 2017 Wayne Ohmer. All rights reserved.
//

import UIKit

class MainController: UITableViewController {

    @IBOutlet weak var goColoredView: CDesignableView!
    @IBOutlet weak var circleColoredView: CDesignableView!
    @IBOutlet weak var netgearColoredView: CDesignableView!
    @IBOutlet var headerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.tableFooterView = UIView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: 1000))
        self.tableView.tableFooterView?.backgroundColor = UIColor(red:0.933, green:0.941, blue:0.95, alpha:1)
        self.tableView.estimatedRowHeight = 150
        
    }
    
    override func viewDidLayoutSubviews() {
        self.goColoredView.layer.cornerRadius = self.goColoredView.frame.height/2.0
        self.circleColoredView.layer.cornerRadius = self.circleColoredView.frame.height/2.0
        //self.netgearColoredView.layer.cornerRadius = self.netgearColoredView.frame.height/2.0
    }

    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        return UIView()
        //return self.headerView
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 0
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
}
