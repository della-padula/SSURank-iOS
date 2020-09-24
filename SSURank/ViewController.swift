//
//  ViewController.swift
//  SSURank
//
//  Created by Denny on 2020/09/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private var segmentController: UISegmentedControl = UISegmentedControl()
    private var searchBar: UISearchBar = UISearchBar()
    
    private var resultTableView: UITableView = UITableView()
    
    private var placeholderView: UIView = UIView()
    private var emptyImageView: UIImageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        ListFetcher.shared.fetchItemList(category: .professor, reqType: .major, content: "컴퓨터학부", completion: { result in
            
        })
    }


}

