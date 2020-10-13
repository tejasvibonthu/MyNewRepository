//
//  ViewController.swift
//  HarishTaskDropdowns
//
//  Created by IOSuser3 on 23/09/20.
//  Copyright © 2020 CGG. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate,UITableViewDataSource{
   var myArray = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28",]
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate = self
        self.tableView.dataSource = self
        tableView.reloadData()
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.250) {
            
            self.tableView.scrollToRow(at: IndexPath(row: self.myArray.count - 1, section: 0), at: .bottom, animated: false)
        }

        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
      //  cell.lb.text = "\(indexPath.row)"
       cell.lb.text =  myArray[indexPath.row]
        return cell
       }

}

