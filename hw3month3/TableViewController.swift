//
//  TableViewController.swift
//  hw3month3
//
//  Created by atay on 26/4/23.
//

import UIKit

class TableViewController: UIViewController {
    private var users: [User] = []
    private let idCell = "cell"
    
    @IBOutlet weak var contactsTableView: UITableView!
    
    override func viewDidLoad() {
        
        initData()
        contactsTableView.dataSource = self
        self.title = "My Contacts"
        super.viewDidLoad()
        
        
    }
    private func initData(){
        users = [User(name: "Atay", phoneNumber: "0552029406", image: "User"),
                 User(name: "Ajar", phoneNumber: "0555029407", image: "User"),
                 User(name: "Nursultan", phoneNumber: "0228322004", image: "User"),
                 User(name: "Argen", phoneNumber: "0705467802", image: "User"),
                 User(name: "Sezim", phoneNumber: "0555009007", image: "User")]
    }
    
    
    
}
extension TableViewController: UITableViewDataSource {
func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    users.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
    cell.textLabel?.text = users[indexPath.row].name
    cell.detailTextLabel?.text = users[indexPath.row].phoneNumber
    cell.imageView?.image = UIImage(named: users [indexPath.row].image)
    return cell
}

}
    struct User {
        
        var name: String
        var phoneNumber: String
        var image: String
        
    }

