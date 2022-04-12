//
//  AppConstants+ViewEnvironment.swift
//  Project-Z
//
//  Created by Dhruv on 28/9/21.
//

import Foundation
import UIKit

extension AppConstants{
    
    struct ViewEnvironment {
        
        static var NUMBER_OF_INTEREST_ITEM : CGFloat {
            get{
                
                if   UIScreen.main.bounds.width <= 414
                {
                    return  3
                }else
                {
                     return  4
                }
                
            }
        }
        
        static var NUMBER_OF_MEMBERIN_ROOM : Int {
            get{
                
                if   UIScreen.main.bounds.width <= 414
                {
                    return  4
                }else
                {
                     return  5
                }
                
            }
        }
        
        static let HEIGHT_OF_INTREST_CELL : CGFloat = 111
        static let HEIGHT_OF_INTREST_HEADER : CGFloat = 60
        static let HEIGHT_OF_FRIENDSUGGESTION_CELL : CGFloat = 120
        static let NUMBER_OF_FRIENDSUGGETION_ITEM : CGFloat = 3
        
    }
    
}
