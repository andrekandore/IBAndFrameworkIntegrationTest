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
        super.prepareForInterfaceBuilder()
        overwrite()

    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        overwrite()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.view.backgroundColor = UIColor.red
        overwrite()

    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        overwrite()
    }
}

class NextView: IBDesignableView {
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        overwrite()
//        self.backgroundColor = UIColor.blue
    }
}


class ContentView: IBDesignableView {
//    override func prepareForInterfaceBuilder() {
//        super.prepareForInterfaceBuilder()
//                overwrite()
//        //        self.backgroundColor = UIColor.blue
//    }
}


//let r: Bool = done

//let done: Bool = {
//
//    NotificationCenter.default.addObserver(forName: Notification.Name(rawValue: "DidSet"), object: nil, queue: nil, using: { _ in
//        overwrite()
//        })
//
//    return true
//}()

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
//    NotificationCenter.default.post(name: Notification.Name("Update"), object: nil)

//    DispatchQueue.main.asyncAfter(deadline: .now() + 0.1, execute: {
//        
//
//    })

    return true
}

