//
//  AppDelegate.swift
//  BusyApp2
//
//  Created by Marco Herrera on 2/16/16.
//  Copyright (c) 2016 Marco Herrera. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var mainWindowController: MainWindowController?
    


    func applicationDidFinishLaunching(aNotification: NSNotification)
    {
        let mainWindowController = MainWindowController()
        mainWindowController.showWindow(self)
        self.mainWindowController = mainWindowController
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }


}

