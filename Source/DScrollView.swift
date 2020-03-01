//
//  DScrollView.swift
//  Pods-ACTesteLibCreate_Example
//
//  Created by Marcello Chuahy on 29/02/20.
//

import UIKit

public class DScrollView: UIScrollView {
  
  public override init(frame: CGRect) {
    super.init(frame: frame)
    keyboardDismissMode = .interactive
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
