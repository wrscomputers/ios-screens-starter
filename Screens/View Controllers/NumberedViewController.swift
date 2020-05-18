//
//  NumberedViewController.swift
//  Screens
//
//  Created by Spencer Curtis on 4/20/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class NumberedViewController: UIViewController {
    
    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 160, height: 80))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(label)
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 64)
        label.center = view.center
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let vcCount = navigationController?.viewControllers.count {
            label.text = String(vcCount)
        }
    }
}
