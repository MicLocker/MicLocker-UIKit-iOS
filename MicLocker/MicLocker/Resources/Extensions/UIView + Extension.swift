//
//  UIView + Extension.swift
//  MicLocker
//
//  Created by James McDougall on 3/1/23.
//

import UIKit

extension UIView {
    
    public var frameWidth: CGFloat {
        return frame.size.width
    }
    
    public var frameHeight: CGFloat {
        return frame.size.height
    }
    
    public var frameTop: CGFloat {
        return frame.origin.y
    }
    
    public var frameBottom: CGFloat {
        return frame.origin.y + frame.size.height
    }
    
    public var frameLeft: CGFloat {
        return frame.origin.x
    }
    
    public var frameRight: CGFloat {
        return frame.origin.x + frame.size.width
    }
}
