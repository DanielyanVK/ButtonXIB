//
//  ScreenTwoViewController.swift
//  ButtonXib
//
//  Created by Vladislav on 11.12.2021.
//

import UIKit

class ScreenTwoViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // Table's outlet
    @IBOutlet weak var songsTableView: UITableView!
    
    // Data for the table
    let songsData = ["Channel", "Nights", "Ivy", "Thinking About You", "Solo"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initializing table cell xib file into table view
        let nib = UINib(nibName: "SongTableViewCell", bundle: .main)
        songsTableView.register(nib, forCellReuseIdentifier: "SongTableViewCell")
        
        // Standart tagle view parameters
        songsTableView.delegate = self
        songsTableView.dataSource = self
    }
    
    // TableView Functions
    // This function allows to set ammount of rows based on amount of data you have
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return songsData.count
    }
    
    // That function allows to get data from songsData
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    // "AS" gives access to properties from TableViewCell
        let cell = songsTableView.dequeueReusableCell(withIdentifier: "SongTableViewCell", for: indexPath) as! SongTableViewCell
        cell.songLabel?.text = songsData[indexPath.row]
        return cell
    }

}
    
