//
//  ViewController.swift
//  TestPush
//
//  Created by giming on 2017/9/5.
//  Copyright © 2017年 Hsin-Yi. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var restaruantNames = ["Cafe Deadend", "Homi", "Teakha", "Cafe Loisl", "Petite Oyster", "ForKee Restaurant", "Po's Atelier", "Bourke Street Bakery", "Haigh's Chocolate", "Palomino Espresso", "Upstate", "Upstate", "Traif", "Graham Avenue Meats And Deli"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaruantNames.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdenfifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdenfifier, for: indexPath)
        // 設定 cell
        cell.textLabel?.text = restaruantNames[indexPath.row]
        
        return cell
    }

}

