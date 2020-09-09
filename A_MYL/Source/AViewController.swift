//
//  AViewController.swift
//  A_MYL
//
//  Created by yulong mei on 2020/9/9.
//  Copyright © 2020 yulong mei. All rights reserved.
//

import UIKit

class AViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .red
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let alert = UIAlertController.init(title: "Hi", message: "我是组件A", preferredStyle: .alert)
        
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
