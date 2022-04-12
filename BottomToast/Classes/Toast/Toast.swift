//
//  Toast.swift
//  Project-Z
//
//  Created by Dhruv on 31/8/21.
//

import Foundation
import UIKit

final class Toast : UIView {

    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    //MARK: Inits
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    //MARK: Outlets
    @IBOutlet private weak var lblToastTitle: UILabel!
    
    @IBOutlet private weak var lblToastDescription: UILabel!
    
    @IBOutlet weak var btnToastCloseButton: UIButton!
    
    @IBOutlet private weak var ToastBackgroundView: UIView!
        
    @IBOutlet weak var btnAction: UIButton!
    
    var bottomOffset: CGFloat = Toast.DEFAULT_BOTTOM_OFFSET
    
    
    //MARK: Constants
    static let DEFAULT_ANIMATION_DURATION : TimeInterval = TimeInterval(0.3) //Duration of Animation
    
    static let DEFAULT_TOAST_DISMISS_DELAY_DURATION : TimeInterval = 1.5 //Total Duration of Toast's Visiblity
    
    static let DEFAULT_BOTTOM_OFFSET: CGFloat = 82

    //MARK: Obeservable Properties
    var aToastTitle : String? = "TITLE" {
        didSet{
            if aToastTitle == nil {
                lblToastTitle.isHidden = true
            } else {
                if let toast = self.aToastTitle  {
                    lblToastTitle.text = toast
                    lblToastTitle.isHidden = false

                }
            }
        }
    }
    
    var aToastDescription : String = "DESCRIPTION" {
        didSet{
            lblToastDescription.text = aToastDescription
        }
    }
    
    var aBackgroundColor : UIColor = .gray {
        didSet{
            ToastBackgroundView.backgroundColor = aBackgroundColor
        }
    }
    
    var aToastTitleColor : UIColor = .white{
        didSet{
            lblToastTitle.textColor = aToastTitleColor
        }
    }
    var aToastDescriptionColor : UIColor = .white {
        didSet {
            lblToastDescription.textColor = aToastDescriptionColor
        }
    }
    var aToastCloseButtonColor : UIColor = .white{
        didSet {
            btnToastCloseButton.tintColor = aToastCloseButtonColor
        }
    }
    var aToastActionTitle : String? = nil {
        didSet {
            if aToastActionTitle == nil {
                btnAction.isHidden = true
            } else {
                btnAction.isHidden = false
                btnAction.setTitle(aToastActionTitle, for: .normal)
            }
        }
    }
    //MARK: Identifier
    var isDismissed : Bool = true // defines if the toast is dismissed after shown or not
    //MARK:- Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        //Setting Corners of the Toast
        ToastBackgroundView.layer.cornerRadius = 15
        ToastBackgroundView.clipsToBounds = true
        //Adding action to close button
        btnToastCloseButton.addTarget(self, action: #selector(_hideToast(_:)), for: .touchUpInside)
        btnAction.addTarget(self, action: #selector(_hideToast(_:)), for: .touchUpInside)
        NotificationCenter.default.addObserver(self, selector: #selector(_hideToast(_:)), name: NSNotification.Name(rawValue: "dismissFlash"), object: nil)
    }
    ///This Function will immediatley hide the toast
    @objc func _hideToast(_ sender : UIButton){
        DismissWithAnimation(duration: Toast.DEFAULT_ANIMATION_DURATION)
    }
    class func dismissFlash() {
        NotificationCenter.default.post(Notification.init(name: Notification.Name("dismissFlash")))
    }
}
