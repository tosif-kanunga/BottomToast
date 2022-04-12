//
//  Toast+Appearance.swift
//  Project-Z
//
//  Created by Dhruv on 1/9/21.
//

import Foundation
import UIKit

//Toast Appearance protocol to define the toast's apperance
protocol ToastAppearance {
    var TitleColor : UIColor { get }
    var DescriptionColor : UIColor { get }
    var BackgroundColor : UIColor { get }
    var CloseButtonColor : UIColor { get }
    var ActionButtonTextColor : UIColor { get }
}

extension Toast{
    enum ToastType : ToastAppearance {       
        case Error
        case Success
        var TitleColor: UIColor{
            .white
        }
        var DescriptionColor: UIColor{
            .white
        }
        var BackgroundColor: UIColor{
            .gray
        }
        var CloseButtonColor: UIColor{
            switch self {
            case .Error:
                return .white
            case .Success:
                return .white
            }
        }
        var ActionButtonTextColor: UIColor{
            .white
        }
    }
}

