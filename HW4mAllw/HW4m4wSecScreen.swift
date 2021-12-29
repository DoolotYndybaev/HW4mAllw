//
//  HW4m4wSecScreen.swift
//  HW4mAllw
//
//  Created by Doolot on 29/12/21.
//

import Foundation
import UIKit
import SnapKit
class SecondViewController4: UIViewController {
     var label = UILabel()
    
    override func viewDidLoad() {
        view.backgroundColor = .cyan

        super.viewDidLoad()
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(150)
            make.width.equalToSuperview().offset(-100)
        }
    }
  
    }
