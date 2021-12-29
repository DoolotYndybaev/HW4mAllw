//
//  HW4m2wSecScreen.swift
//  HW4mAllw
//
//  Created by Doolot on 29/12/21.
//


import UIKit
import SnapKit

class SecondViewController2: UIViewController {
     var label1 = UILabel()
    override func viewDidLoad() {
        view.backgroundColor = UIColor(red: 253/255, green: 241/255, blue: 195/255, alpha: 1)
        
        label1.numberOfLines = 0
        label1.lineBreakMode = .byWordWrapping
        
        view.addSubview(label1)
        label1.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalToSuperview().offset(150)
            make.width.equalToSuperview().offset(-100)
        }
      }
    }

// Aziz, Azamat, Doolot, Ruslan, Kylym, Eldar
