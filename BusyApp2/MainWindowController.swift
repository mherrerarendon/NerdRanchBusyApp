//
//  MainWindowController.swift
//  BusyApp2
//
//  Created by Marco Herrera on 2/16/16.
//  Copyright (c) 2016 Marco Herrera. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {

    @IBOutlet weak var checkButton: NSButton!
    @IBOutlet weak var labelSlider: NSTextField!
    @IBOutlet weak var slider: NSSlider!
    @IBOutlet weak var radShow: NSButton!
    @IBOutlet weak var radHide: NSButton!
    
    var sliderValue = 0
    var slideTemp = 0
    
    override func windowDidLoad()
    {
        super.windowDidLoad()
        checkButton.title = "Check Me"
        checkButton.state = 0
        slider.integerValue = 0
        labelSlider.stringValue = ""
        radShow.state = 1
        slider.numberOfTickMarks = 10
        
    }
    override var windowNibName: String?
    {
        return "MainWindowController"
    }
    
    @IBAction func adjustCheck(sender: NSButton)
    {
        if sender.state == 0
        {
            sender.title = "Check Me"
        }
        else
        {
            sender.title = "Uncheck Me"
        }
    }
    @IBAction func moveSlider(sender: NSSlider)
    {
        
        if sliderValue < sender.integerValue
        {
            labelSlider.stringValue = "Going Up"
            sliderValue = sender.integerValue
        }
        else if sliderValue > sender.integerValue
        {
            labelSlider.stringValue = "Going Down"
            sliderValue = sender.integerValue
        }
        else
        {
            labelSlider.stringValue = ""
        }
    }
    @IBAction func radioShow(sender: NSButton)
    {
        if sender.state == 1
        {
            slider.numberOfTickMarks = 10
            radHide.state = 0
        }
        
    }
    @IBAction func radioHide(sender: NSButton)
    {
        if sender.state == 1
        {
            slider.numberOfTickMarks = 0
            radShow.state = 0
        }
    }
}
