//
//  File.swift
//  MyUIKit
//
//  Created by アンドレ on H30/06/16.
//  Copyright © 平成30年 アンドレ. All rights reserved.
//

import UIKit

@IBDesignable
open class IBDesignableView: UIView {
    override open func prepareForInterfaceBuilder() {
        //        self.backgroundColor = UIColor.red
        super.prepareForInterfaceBuilder()

    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        NotificationCenter.default.addObserver(forName: Notification.Name(rawValue: "Update"), object: nil, queue: nil, using: {_ in
            let name = self.stylename
            self.stylename = name
            self.setNeedsDisplay()
            self.setNeedsLayout()
            self.backgroundColor = UIColor.yellow
        })
    }

    public override init(frame: CGRect) {
        super.init(frame: frame)
    }
}


public extension IBDesignableView {
    @IBInspectable public var stylename: String? {
        set {
            self.layer.name = newValue
            S.Button.blueStyle(self)
        }
        get {return self.layer.name}
    }
}

public struct Styles {
    public var Button:Button = Styles.Button()
    
    public struct Button {
        public var blueStyle: (UIView) -> Void = { view in
                        view.backgroundColor = UIColor.orange
            view.setNeedsDisplay()
        }
        
        public init() {}
    }
    
    public init() {}
}

public var tried: Bool = false
public var S: Styles = {
    
    NotificationCenter.default.post(name: Notification.Name(rawValue: "DidSet"), object: nil)

    
    return Styles()
}()

func changeit() {
    var aNewStyle = Styles()
    var aButton = Styles.Button()
    aButton.blueStyle = { view in
        view.layer.borderColor = UIColor.orange.cgColor
        view.layer.borderWidth = 10
    }
    aNewStyle.Button = aButton
    S = aNewStyle
}

