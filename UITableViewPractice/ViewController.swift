//
//  ViewController.swift
//  UITableViewPractice
//
//  Created by Денис Андреев on 7/9/19.
//  Copyright © 2019 Денис Андреев. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
   var myTableView = UITableView()
    var ident = "MyCell"

    
    
    override func viewDidLoad() {
       self.myTableView = UITableView(frame: view.bounds, style: .plain)
        myTableView.register(UITableViewCell.self, forCellReuseIdentifier: ident)
        myTableView.delegate = self
        myTableView.dataSource = self
        
        myTableView.autoresizingMask = [.flexibleWidth, .flexibleWidth]
        view.addSubview(myTableView)

    }




}

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ident,for: indexPath)
        cell.textLabel?.text = "row = \(indexPath.row)"
        cell.backgroundColor = .blue
        return cell
    }
    
    
}

