//
//  ViewController.swift
//  FoodTracker
//
//  Created by Steff McKee on 1/17/17.
//  Copyright © 2017 Steff McKee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UISearchBarDelegate, UISearchControllerDelegate, UISearchResultsUpdating {

    @IBOutlet weak var tableView: UITableView!
    
    var searchController:UISearchController!
    
    var suggestedSearchFoods:[String] = []
    var filteredSuggestedSearchFoods:[String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.searchController = UISearchController(searchResultsController: nil)
        self.searchController.searchResultsUpdater = self
        self.searchController.dimsBackgroundDuringPresentation = false
        self.searchController.hidesNavigationBarDuringPresentation = false
        self.searchController.searchBar.frame = CGRect(x: self.searchController.searchBar.frame.origin.x, y: self.searchController.searchBar.frame.origin.y, width: self.searchController.searchBar.frame.size.width, height: 44.0)
        self.tableView.tableHeaderView = self.searchController.searchBar
        self.searchController.searchBar.delegate = self
        self.definesPresentationContext = true
        self.suggestedSearchFoods = ["apple", "bagel", "banana", "beer", "bread", "brussel sprouts", "brown rice", "carrots", "cheddar cheese", "chicken breast", "chili with beans", "chocolate chip cookie", "coffee", "cola", "corn", "egg", "graham cracker", "granola bar", "grapes", "greek yogurt", "green beans", "green onion", "ground beef patty", "hot dog", "ice cream", "jelly doughnut", "ketchup", "milk" ,"mixed nuts", "mustard", "oatmeal", "orange juice", "peanut butter", "pizza", "pork chop", "potato", "potato chips", "pretzels", "pumpkin seeds", "raisins", "ranch salad dressing", "red onion", "red wine", "rice", "salsa", "shrimp", "spaghetti", "spaghetti sauce", "spinach", "tofu", "tuna", "whole wheat bread", "white wine", "yellow cake"]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // Mark - UITableViewDataSource
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    // Mark - UISearchResultsUpdating
    
    func updateSearchResults(for searchController: UISearchController) {
    }
    
}

