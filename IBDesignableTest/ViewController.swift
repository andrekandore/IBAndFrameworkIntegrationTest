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
    override func prepareForInterfaceBuilder() {
        overwrite()
        super.prepareForInterfaceBuilder()
        view.setNeedsDisplay()
        view.setNeedsLayout()

    }

}

@IBDesignable
class FrameworkIntegrationView: IBDesignableView {
    override func prepareForInterfaceBuilder() {
        overwrite()
        super.prepareForInterfaceBuilder()
    }
}


@discardableResult
func overwrite() -> Bool {
    var newColorStyle = Styles()
    var newButtons = Styles.Button()
    newButtons.blueStyle = { view in
        view.layer.borderColor = UIColor.green.cgColor
        view.layer.borderWidth = 10
        view.setNeedsDisplay()
        view.setNeedsLayout()
        view.superview?.setNeedsDisplay()
        view.superview?.setNeedsLayout()
    }
    newColorStyle.Button = newButtons
    S = newColorStyle

    return true
}

