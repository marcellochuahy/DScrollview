//
//  ViewController.swift
//  DScrollview
//
//  Created by marcellochuahy on 02/29/2020.
//  Copyright (c) 2020 marcellochuahy. All rights reserved.
//

//import UIKit
//
//class ViewController: UIViewController {
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//}

import UIKit
import DScrollview
//import TinyConstraints

class ViewController: UIViewController {
  
  let scrollView = DScrollView()
  let scrollViewContainer = DScrollViewContainer(axis: .vertical, spacing: 10)
  let scrollViewElement0 = DScrollViewElement(height: 1200, backgroundColor: .purple)
  let scrollViewElement1 = DScrollViewElement(height: 500, backgroundColor: .purple)//.withBackground(image: #imageLiteral(resourceName: "icon.png"), contentMode: .scaleAspectFit)
  
  let label = UILabel()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    view.backgroundColor = .white
    label.text = "I am a label"
    
    view.addScrollView(scrollView,
                       withSafeArea: .none,
                       hasStatusBarCover: true,
                       statusBarBackgroundColor: .white,
                       container: scrollViewContainer,
                       elements: scrollViewElement0, scrollViewElement1)
    
    scrollViewElement1.addSubview(label)
    //label.      // centerInSuperview()
    label.edgeTo(scrollViewElement1)
  }
  
}

