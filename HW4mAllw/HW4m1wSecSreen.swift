//
//  HW4m1wSecSreen.swift
//  HW4mAllw
//
//  Created by Doolot on 29/12/21.
//

import Foundation
import UIKit
import SnapKit


class SecondViewController: UIViewController {
     var label1 = UILabel()
    override func viewDidLoad() {
        view.backgroundColor = UIColor(red: 253/255, green: 241/255, blue: 195/255, alpha: 1)
        
        label1.layer.borderWidth = 2
        label1.layer.borderColor = UIColor.red.cgColor
        label1.layer.cornerRadius = 5
        view.addSubview(label1)
        label1.snp.makeConstraints{make in
            make.centerX.equalToSuperview().inset(100)
            make.centerY.equalToSuperview().inset(100)
            make.right.left.equalToSuperview().inset(50)

      }
    }
}
