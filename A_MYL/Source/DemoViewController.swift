//
//  DemoViewController.swift
//
//  Created by casa on 2020/2/21.
//  Copyright © 2020 casa. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "组件A——DemoViewController"
        label.font = UIFont.systemFont(ofSize: 15)
        label.backgroundColor = .yellow
        label.textColor = .systemPink
        label.textAlignment = .center
        label.frame = CGRect.init(x: 20, y: 20, width: 350, height: 50)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
        self.navigationItem.title = "组件A——DemoViewController"
        self.view.addSubview(titleLabel)
    }
}
