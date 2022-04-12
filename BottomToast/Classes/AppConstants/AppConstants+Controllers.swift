//
//  AppConstants+Controllers.swift
//  Project-Z
//
//  Created by Dhruv on 28/9/21.
//

import Foundation
import UIKit

extension AppConstants{
    
    struct Controllers{
        
        static let IntrestsSelectionViewController : String = "IntrestsSelectionViewController"
        
        static let OnBoardingViewController : String = "OnBoardingViewController"
        
        static let ContryCodeSelectionViewController : String = "ContryCodeSelectionViewController"
        
       
        struct Profile{
            static let UserNameInputViewController : String = "UserNameInputViewController"
            static let ProfileNameInputViewController : String = "ProfileNameInputViewController"
            static let BirthdatePickerViewController : String = "BirthdatePickerViewController"
            static let GenderSelectionViewController : String = "GenderSelectionViewController"
            static let ProfilePictureViewController : String = "ProfilePictureViewController"
        }
        
        struct Signup{
            
            static let PhoneNumberRegistrationViewController : String = "PhoneNumberRegistrationViewController"
            static let OTPVerificationViewController : String = "OTPVerificationViewController"
           
        }
        
        static let PermissionsViewController : String = "PermissionsViewController"
        static let WelcomeViewController : String = "WelcomeViewController"
        
        struct NetworkBuilding{
            static let FollowFriendsViewController : String = "FollowFriendsViewController"
            static let FollowSuggestionsViewController : String = "FollowSuggestionsViewController"
        }
        
        struct CreateRoom {
            static let CreateRoomViewController : String = "CreateRoomViewController"
            static let CreateRoomTopicCategoryHashViewController : String = "CreateRoomTopicCategoryHashViewController"
            static let AddSpeakersViewController : String =  "AddSpeakersViewController"
            static let ScheduleViewController : String = "ScheduleViewController"
            
        }
        struct Home {
            static let CalendarBottomsheetNotifyViewController : String = "CalendarBottomsheetNotifyViewController"
        }
        
        struct Rooms {
            static let ProfileBottomSheetViewController : String = "ProfileBottomSheetViewController"
            static let JoinedRoomViewController : String =  "JoinedRoomViewController"
            static let CommunityGuidelinesViewController : String = "CommunityGuidelinesViewController"
            static let ReactionsViewController : String = "ReactionsViewController"
            static let AudioRoomRecodedPlayViewController : String = "AudioRoomRecodedPlayViewController"
            static let HandsRaisedViewController : String = "HandsRaisedViewController"
            static let InviteRoomViewController : String = "InviteRoomViewController"
        }
    }
    
}
