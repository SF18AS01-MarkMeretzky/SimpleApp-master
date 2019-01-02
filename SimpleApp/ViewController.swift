//
//  ViewController.swift
//  SimpleApp
//
//  Created by Cristian Rivera on 12/31/18.
//  Copyright © 2018 Cristian Rivera. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let label: UILabel = UILabel();
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.backgroundColor = .yellow;
        label.numberOfLines = 0;   //0 permits any number of lines
        label.textColor = .red;
        label.text = "Please swipe any direction up down left right\n on your really big screen"
        label.frame.origin = CGPoint(x: 50, y: 300);  //frame is a CGRect.
        label.frame.size = label.intrinsicContentSize; //needed if not using constraints
        print("label.frame = \(label.frame)");         //(100.0, 100.0, 169.0, 61.0)
        print(view.subviews.count);
        label.isHidden = true;
        view.addSubview(label);
        print(view.subviews.count);
    }
    
    @IBAction func returnedInput(_ sender: UITextField) {
        sender.resignFirstResponder();
        //let name:String = sender.text!
        label.text = "Welcome \(sender.text!) swipe any\n direction on your screen "
        label.isHidden = false;
    }
    
    @IBAction func swipeGestureRecognized(_ sender: UISwipeGestureRecognizer) {
        /*
        if sender.direction.rawValue == 1 {
            label.text = "swiped right";
        } else if sender.direction.rawValue == 2 {
            label.text = "swiped left";
        } else if sender.direction.rawValue == 4 {
            label.text = "swiped up";
        } else if sender.direction.rawValue == 8 {
            label.text = "swiped down";
        }
        */
        
        switch sender.direction.rawValue {
        case 1:
            label.text = "swiped right";
        case 2:
            label.text = "swiped left";
        case 4:
            label.text = "swiped up";
        case 8:
            label.text = "swiped down";
        default:
            label.text = "unrecognized dircetion"
        }
    }
    
    /*
    @IBAction func swipeRight(_ sender: UISwipeGestureRecognizer) {
        label.text = "right \(sender.direction)";
        print(sender.direction.rawValue);
    }
    
    @IBAction func swipeDown(_ sender: UISwipeGestureRecognizer) {
        label.text = "You just swiped down";
        print(sender.direction.rawValue);
    }
    
    @IBAction func swipeLeft(_ sender: UISwipeGestureRecognizer) {
        label.text = "You just swiped left";
        print(sender.direction.rawValue);
    }
    */
}

