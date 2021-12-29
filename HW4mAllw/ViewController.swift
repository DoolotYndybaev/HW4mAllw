//
//  ViewController.swift
//  HW4mAllw
//
//  Created by Doolot on 29/12/21.
//

import UIKit
import SnapKit
class ViewController: UIViewController {
    var HW4m1wButton = UIButton(type: .system)
    var HW4m2wButton = UIButton(type: .system)
    var HW4m3wButton = UIButton(type: .system)
    var HW4m4wButton = UIButton(type: .system)

    override func viewDidLoad() {
        super.viewDidLoad()
         
        view.backgroundColor = UIColor(red: 241/255, green: 248/255, blue: 228/255, alpha: 1)
        
        let label = UILabel()
        label.text = "Home Work 4Month!"
        label.font = UIFont.systemFont(ofSize: 25)
        view.addSubview(label)
        label.snp.makeConstraints{ make in
            make.left.equalToSuperview().inset(50)
            make.top.equalToSuperview().inset(100)
        }
        
        
        HW4m1wButton.layer.cornerRadius = 20
        HW4m1wButton.backgroundColor = UIColor(red: 84/255, green: 118/255, blue: 171/255, alpha: 1)
        HW4m1wButton.setTitleColor(.white, for: .normal)
        HW4m1wButton.setTitle("1 - task", for: .normal)
        HW4m1wButton.addTarget(nil, action: #selector(VCChanger), for: .touchUpInside)
        view.addSubview(HW4m1wButton)
        HW4m1wButton.snp.makeConstraints{ make in
            make.left.equalToSuperview().inset(50)
            make.top.equalToSuperview().inset(180)
            make.width.equalTo(150)
            make.height.equalTo(40)
            
        }
        HW4m2wButton.layer.cornerRadius = 20
        HW4m2wButton.backgroundColor = UIColor(red: 84/255, green: 118/255, blue: 171/255, alpha: 1)
        HW4m2wButton.setTitleColor(.white, for: .normal)
        HW4m2wButton.setTitle("2 - task", for: .normal)
        HW4m2wButton.addTarget(nil, action: #selector(VCChanger), for: .touchUpInside)
        view.addSubview(HW4m2wButton)
        HW4m2wButton.snp.makeConstraints{ make in
            make.left.equalToSuperview().inset(50)
            make.top.equalToSuperview().inset(240)
            make.width.equalTo(150)
            make.height.equalTo(40)

        }
        HW4m3wButton.layer.cornerRadius = 20
        HW4m3wButton.backgroundColor = UIColor(red: 84/255, green: 118/255, blue: 171/255, alpha: 1)
        HW4m3wButton.setTitleColor(.white, for: .normal)
        HW4m3wButton.setTitle("3 - task", for: .normal)
        HW4m3wButton.addTarget(nil, action: #selector(VCChanger), for: .touchUpInside)
        view.addSubview(HW4m3wButton)
        HW4m3wButton.snp.makeConstraints{ make in
            make.left.equalToSuperview().inset(50)
            make.top.equalToSuperview().inset(300)
            make.width.equalTo(150)
            make.height.equalTo(40)
        }
        HW4m4wButton.layer.cornerRadius = 20
        HW4m4wButton.backgroundColor = UIColor(red: 84/255, green: 118/255, blue: 171/255, alpha: 1)
        HW4m4wButton.setTitleColor(.white, for: .normal)
        HW4m4wButton.setTitle("4 - task", for: .normal)
        HW4m4wButton.addTarget(nil, action: #selector(VCChanger), for: .touchUpInside)
        view.addSubview(HW4m4wButton)
        HW4m4wButton.snp.makeConstraints{ make in
            make.left.equalToSuperview().inset(50)
            make.top.equalToSuperview().inset(360)
            make.width.equalTo(150)
            make.height.equalTo(40)

        }

    }

    
       @objc func VCChanger(sender: UIButton) {
           if sender.titleLabel?.text == "1 - task"{
               navigationController?.pushViewController(ViewController1(), animated: true)
           }else if sender.titleLabel?.text == "2 - task"{
               navigationController?.pushViewController(ViewController2(), animated: true)
           }else if sender.titleLabel?.text == "3 - task"{
               navigationController?.pushViewController(ViewController3(), animated: true)
           }else if sender.titleLabel?.text == "4 - task"{
               navigationController?.pushViewController(ViewController4(), animated: true)
           }

       }
}


