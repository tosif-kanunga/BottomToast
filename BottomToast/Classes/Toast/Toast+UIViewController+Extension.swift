//
//  Toast+UIViewController+Extension.swift
//  Project-Z
//
//  Created by Dhruv on 1/9/21.
//

import Foundation
import UIKit

extension UIViewController {
    
    ///This Function Will Show a Toast Message with title and message
    /// - parameter Title : title of the toast
    /// - parameter Message : message of the toast
    /// - parameter ToastType : Type of the toast which deteretmines the nature and appearance of the toast
    /// - Note : Add More cases in `Toast+Appearance.swift` if need different appearance for different scenarios
   public func showToastMessage(Title : String?, Message : String, Action : Selector? = nil, ButtonTitle : String? = nil, target : Any? = nil, closeAction : Selector? = nil, autoDismiss : Bool = true) {
        let aToastView: Toast = UIView.fromNib()
        //Setting up toast based on passed toast type
        aToastView.aToastTitle = Title
        aToastView.aToastDescription = Message
        aToastView.bottomOffset = 85
        if closeAction != nil{
            aToastView.btnToastCloseButton.addTarget(target, action: closeAction!, for: .touchUpInside)
        }
        
        self.view.addSubview(aToastView) // adding toast view as subview in current view controller's view
        
        //Activating Constraints for autolayouting the Toast
        aToastView.translatesAutoresizingMaskIntoConstraints = false
        if #available(iOS 11.0, *) {
            NSLayoutConstraint.activate([
                aToastView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 0),
                aToastView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: 0),
                aToastView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -85)
            ])
        } else {
            // Fallback on earlier versions
        }
        
        //Trasnforming the Toast's position and sending it to outside of view so it won't be visible on user side
        aToastView.transform = CGAffineTransform(translationX: 0, y: aToastView.frame.height + 85)
        
        if Action != nil && ButtonTitle != nil && target != nil{
            
            aToastView.aToastActionTitle = ButtonTitle
            aToastView.btnAction.addTarget(target, action: Action!, for: .touchUpInside)
            aToastView.btnAction.setTitleColor(.white, for: .normal)
        } else {
            aToastView.aToastActionTitle = nil
        }
        //presenting the toast with animation
        aToastView.PresentWithAnimation(duration: Toast.DEFAULT_ANIMATION_DURATION, delayBeforeDismiss: Toast.DEFAULT_TOAST_DISMISS_DELAY_DURATION, autoDismiss: autoDismiss)

    }
    
}
 
extension UIView {
    class func fromNib<T: UIView>() -> T {
        return Bundle(for: T.self).loadNibNamed(String(describing: T.self), owner: nil, options: nil)![0] as! T
    }
}
