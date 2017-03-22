//
//  ViewController.swift
//  EstimoteTelemetry
//
//  Created by Valentino Gattuso on 22/03/2017.
//  Copyright © 2017 CoolestProjects. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let deviceManager = ESTDeviceManager()

    let lightNotification = ESTTelemetryNotificationAmbientLight { (ambientLightInfo) in
        let lightLevel = Int(ambientLightInfo.ambientLightLevelInLux)
        print("Light level: \(lightLevel) lux")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        deviceManager.register(forTelemetryNotification: lightNotification)

    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        deviceManager.unregister(forTelemetryNotification: lightNotification)
    }

}

