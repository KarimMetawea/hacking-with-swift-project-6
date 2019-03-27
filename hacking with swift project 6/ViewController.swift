//
//  ViewController.swift
//  hacking with swift project 6
//
//  Created by karim metawea on 3/26/19.
//  Copyright © 2019 karim metawea. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.text = "these"
        label1.backgroundColor = UIColor.red
        label1.sizeToFit()
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.text = "are"
        label2.backgroundColor = UIColor.black
        label2.sizeToFit()
        
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.text = "some"
        label3.backgroundColor = UIColor.purple
        label3.sizeToFit()
        
        let label4 = UILabel()
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.text = "awesome"
        label4.backgroundColor = UIColor.orange
        label4.sizeToFit()
        
        let label5 = UILabel()
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.text = "features"
        label5.backgroundColor = UIColor.gray
        label5.sizeToFit()
        
        view.addSubview(label1)
        view.addSubview(label2)
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        
//        let viewsDicitionary = ["label1":label1 , "label2":label2 , "label3":label3 , "label4":label4 , "label5":label5]
//
//        for label in viewsDicitionary.keys {
//            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(label)]|", options: [], metrics: nil, views: viewsDicitionary))
//
//        }
//
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|->=30-[label1(labelHeight@999)]-[label2(label1)]-[label3(label1)]-[label4(label1)]-[label5(label1)]->=10-|", options: [], metrics: ["labelHeight":88], views: viewsDicitionary))
        var previous:UILabel?
        
        
        for label in [label1,label2,label3,label4,label5]{
            
            label.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
            label.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
            label.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.2, constant: -20).isActive = true
          
            if let previouv = previous {
                label.topAnchor.constraint(equalTo: previouv.bottomAnchor, constant: 20).isActive = true
            }else {
                label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
            }
            
            previous = label
        }

        
        
    }


}

