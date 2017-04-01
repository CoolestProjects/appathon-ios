//
//  CPFirebaseDefaultService.swift
//  CoolestProjectCoinCollector
//
//  Created by Natasha Cole on 01/04/2017.
//  Copyright © 2017 Natasha Cole. All rights reserved.
//

import UIKit
import Firebase

class CPFirebaseDefaultService: UIViewController {
  let uuid = UUID().uuidString
  var hasUserAccount = false
  var profiles: [CPProfile] = []
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  func getProfileWithCompletionBlock() {
    FIRApp.configure()
    FIRDatabase.database().persistenceEnabled = true
    let ref = FIRDatabase.database().reference(withPath: "profiles")
    ref.queryOrdered(byChild: "profile").observe(.value, with: { snapshot in
      
      for profile in snapshot.children {
        let profile = CPProfile(snapshot: profile as! FIRDataSnapshot)
        self.profiles.append(profile)
        //To do: Check if UUID is already saved
        //To do: If so segue to game else normal flow
      }
    })
  }
}
