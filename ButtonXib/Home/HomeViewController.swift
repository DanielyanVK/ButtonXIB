//
//  HomeViewController.swift
//  ButtonXib
//
//  Created by Vladislav on 11.12.2021.
//

import UIKit

class HomeViewController: UIViewController {
    // Label outlet
    @IBOutlet weak var countingLabel: UILabel!
    var count = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // Plus Button Logic
    
    @IBAction func plusCountButton() {
        count += 1
        countingLabel.text = String(count)
    }
    
    
    // Minus Button Logic
    @IBAction func minusCountButton() {
        count -= 1
        countingLabel.text = String(count)}
    
}
