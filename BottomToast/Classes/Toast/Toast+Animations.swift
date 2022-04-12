//
//  Toast+Animations.swift
//  Project-Z
//
//  Created by Dhruv on 1/9/21.
//

import Foundation
import UIKit

extension Toast {
    /// - Present The Toast On Screen with Animation
    /// - parameter duration : duration of animation
    /// - parameter delayBeforeDismiss : total duration of toast
    func PresentWithAnimation(duration : TimeInterval, delayBeforeDismiss : TimeInterval, autoDismiss : Bool = true) {
        isDismissed = false //Set as false until the toast is dismissed
        UIView.animate(withDuration: Toast.DEFAULT_ANIMATION_DURATION) {
            self.transform = CGAffineTransform(translationX: 0, y: 0) //Transforming the Y position to make it visible on screen
        } completion: { (_) in
            if autoDismiss{
                DispatchQueue.main.asyncAfter(deadline: .now() + delayBeforeDismiss) {
                    self.DismissWithAnimation(duration: duration)
                }
            }            
        }
    }
    ///Dismiss The Toast from Screen with Animation
    /// - parameter duration : duration of animation
    func DismissWithAnimation(duration : TimeInterval){
        guard !isDismissed else{
            //if already dismissed exit the function
            return
        }
        UIView.animate(withDuration: duration) {
            self.transform = CGAffineTransform(translationX: 0, y: self.frame.height + self.bottomOffset) // hide the toast by changing the position
        } completion: { (_) in
            self.isDismissed = true // change the flag to true so function can be exited earlier
            self.removeFromSuperview() // remove the toast from supper view and release the occupied memory
        }
    }
}
