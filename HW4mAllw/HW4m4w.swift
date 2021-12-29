//
//  HW4m4w.swift
//  HW4mAllw
//
//  Created by Doolot on 29/12/21.
//

import UIKit
import SnapKit

class ViewController4: UIViewController {
    
    private var textField = UITextField()
     private var button = UIButton()
  
    
    var b = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        textField.placeholder = "  Введите текст..."
        
        textField.layer.borderWidth = 2
        textField.layer.borderColor = UIColor.black.cgColor
        textField.layer.cornerRadius = 10
        view.addSubview(textField)
             textField.snp.makeConstraints { make in
                 make.centerX.equalToSuperview()
                 make.centerY.equalToSuperview().offset(-150)
                 make.width.equalToSuperview().offset(-50)
             }
        button.backgroundColor = .cyan
              button.setTitle("Ввод", for: .normal)
              button.setTitleColor(.black, for: .normal)
        button.layer.borderWidth = 2
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 15
        button.addTarget(nil, action: #selector(clickButton(sender:)), for: .touchUpInside)
              
              view.addSubview(button)
              button.snp.makeConstraints { make in
                  make.centerX.equalToSuperview()
                  make.centerY.equalToSuperview().offset(-70)
                  make.width.equalTo(100)
              }
        
    }
    @objc func clickButton(sender: UIButton) {
        
        b = String(textField.text ?? "")
        var w = 0
        for i in b {
            if i == " " {
                w += 1
            }
        }
        let s = b.count
        
      
        let controller = SecondViewController4()
        controller.label.text = textField.text
        navigationController?.pushViewController(controller, animated: true)
        controller.label.text = String("В тексте: \n \(s) символов \n \(w + 1) слов \n \(w) пробелов")
       
        
    }
}
