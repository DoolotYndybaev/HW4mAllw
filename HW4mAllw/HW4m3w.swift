//
//  HW4m3w.swift
//  HW4mAllw
//
//  Created by Doolot on 29/12/21.
//
import UIKit
import SnapKit

class ViewController3: UIViewController {
 
   
    private var button = UIButton()
    private var text1 = UITextField()
    
    var s = "Aziz, Azamat, Doolot, Ruslan, Kylym, Eldar"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        text1.placeholder = "  Введите текст..."
        text1.layer.cornerRadius = 40
       
        view.backgroundColor = UIColor(red: 253/255, green: 241/255, blue: 195/255, alpha: 1)
        
        view.addSubview(text1)
        text1.backgroundColor = .systemBackground
        text1.snp.makeConstraints {make in
            make.top.equalToSuperview().offset(350)
            make.centerX.equalToSuperview()
            make.height.equalTo(100)
            make.width.equalTo(200)
            
        }

        
        
        view.addSubview(button)
                    button.setTitle("Печать", for: .normal)
                    button.backgroundColor = .systemRed
                    button.setTitleColor(.black, for: .normal)
        
        button.layer.cornerRadius = 40
        
        
        button.addTarget(nil, action: #selector(clickButton(sender:)), for: .touchUpInside)
                    button.snp.makeConstraints {make in
                        make.top.equalTo(text1.snp.bottom).offset(50)
                        make.centerX.equalToSuperview()
                        make.height.equalTo(100)
                        make.width.equalTo(100)
                        
                        
                    }
                    

        
        
        
    }
    
    @objc func clickButton(sender: UIButton) {
          
          s.append(", ")
          s.append(text1.text ?? "")
        text1.text = ""
        let controller = SecondViewController3()
        navigationController?.pushViewController(controller, animated: true)
      
        controller.label2.text = s.replacingOccurrences(of: ", ", with: "\n", options: .literal, range: nil)
      }
    }


