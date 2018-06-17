//
//  ViewController.swift
//  IBDesignableTest
//
//  Created by アンドレ on H30/06/16.
//  Copyright © 平成30年 アンドレ. All rights reserved.
//

import UIKit
import MyUIKit

@IBDesignable
class ViewController: UIViewController {
//    override func prepareForInterfaceBuilder() {
//        super.prepareForInterfaceBuilder()
//        overwrite()
//        self.view.setNeedsDisplay()
//        self.view.setNeedsLayout()
//
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        super.init(coder: aDecoder)
//        overwrite()
//    }
//
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        self.view.backgroundColor = UIColor.red
//        overwrite()
//        self.view.setNeedsDisplay()
//        self.view.setNeedsLayout()
//
//    }
//
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        overwrite()
//        self.view.setNeedsDisplay()
//        self.view.setNeedsLayout()
//
//    }

}

@IBDesignable
class NextView: IBDesignableView {
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        overwrite()
//        NotificationCenter.default.post(name: Notification.Name("Update"), object: nil)

    }
}


@discardableResult
func overwrite() -> Bool {
    var newColorStyle = Styles()
    var newButtons = Styles.Button()
    newButtons.blueStyle = { view in
        view.layer.borderColor = UIColor.green.cgColor
        view.layer.borderWidth = 10
        
    }
    newColorStyle.Button = newButtons
    S = newColorStyle

    return true
}

