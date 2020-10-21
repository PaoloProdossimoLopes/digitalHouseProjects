//
//  ViewController.swift
//  SearchBar-PickerView-TableView-Exercise
//
//  Created by Paolo Prodossimo Lopes on 17/10/20.
//  Copyright © 2020 Paolo Prodossimo Lopes. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK:OUTLETS
    @IBOutlet weak var searchBarFilter: UISearchBar!
    @IBOutlet weak var pickerViewFilter: UIPickerView!
    @IBOutlet weak var tableViewData: UITableView!
    @IBOutlet weak var tableViewDataCell: UITableViewCell!
    @IBOutlet weak var labelTextData: UILabel!
    
    //MARK:ARRAYS
    var arrayCities=[City]()
    var arrayCitiesFiltred=[City]()
    
    
    
    private func insertData(){
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //MARK:SEARCHBAR
        
        //MARK:PICKERVIEW
        
        //MARK:TABLEVIEW
        tableViewData.delegate=self
        tableViewData.dataSource=self
        
    }


}

//MARK: EXTENSION TABLEVIEW
extension ViewController : UITableViewDelegate{
    
}
extension ViewController :UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        arrayCitiesFiltred.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableViewDataCell!
        return cell
    }
    
}
//MARK: EXTENSION PICKERVIEW

//MARK: EXTENSION SEARCHBAR

//MARK: FUNCTIONS

