//
//  NotificationViewController.swift
//  LetsEatNotificationExtension
//
//  Created by Van Euclid Dy on 10/6/20.
//  Copyright © 2020 Euclidean Software LLC. All rights reserved.
//

import UIKit
import UserNotifications
import UserNotificationsUI

class NotificationViewController: UIViewController, UNNotificationContentExtension {

    @IBOutlet var label: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any required interface initialization here.
    }
    
    func didReceive(_ notification: UNNotification) {
        self.label?.text = notification.request.content.body
    }

}
