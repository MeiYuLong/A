//
//  AViewController.swift
//  A_MYL
//
//  Created by yulong mei on 2020/9/9.
//  Copyright © 2020 yulong mei. All rights reserved.
//

import UIKit

class AViewController: UIViewController {

    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "组件A——AViewController"
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
        
        self.navigationItem.title = "组件A——AViewController"
        self.view.addSubview(titleLabel)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let alert = UIAlertController.init(title: "Hi", message: "我是组件A_AViewController", preferredStyle: .alert)
        
        let action = UIAlertAction.init(title: "OK", style: .default) { (action) in
            self.view.backgroundColor = .yellow
        }
        alert.addAction(action)
        self.present(alert, animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
