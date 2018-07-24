//
//  expenseViewController.swift
//  Expenses
//
//  Created by Kevin Brennan on 6/8/18.
//  Copyright © 2018 Kevin Brennan. All rights reserved.
//

import UIKit

class expenseViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var info: [Info] = []
    let dateFormatter = DateFormatter()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateFormat = "MMMM d, yyyy HH:mm"
        
        info = [Info(title: "Dinner", amount: 32.50, date: dateFormatter.date(from: "June 1, 2018 18:30")!),
                    Info(title: "Office Supplies", amount: 59.34,date: dateFormatter.date(from: "May 30, 2018 12:17")!),
                    Info(title: "Uber", amount: 16.23,date: dateFormatter.date(from: "May 30, 2018 11:43")!),
                    Info(title: "Coffee", amount: 3.95,date: dateFormatter.date(from: "May 29, 2018 8:45")!),
                    ]

        // Do any additional setup after loading the view.
    }
   


    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return info.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "info", for: indexPath) as! infoTableViewCell
    
    cell.title.text = info[indexPath.row].title
    cell.amount.text = String(format: "$%.02f", info[indexPath.row].amount)
    cell.date.text = dateFormatter.string(from: info[indexPath.row].date)
    
    return cell
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
