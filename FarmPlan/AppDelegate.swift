//
//  AppDelegate.swift
//  FarmPlan
//
//  Created by Thorsten Karrer on 13.03.21.
//  Copyright © 2021 Thorsten Karrer. All rights reserved.
//

import Cocoa
import SwiftUI

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

	var window: NSWindow!


	func applicationDidFinishLaunching(_ aNotification: Notification) {
		// Create the SwiftUI view that provides the window contents.
		let contentView = ContentView()

		// Create the window and set the content view. 
		window = NSWindow(
		    contentRect: NSRect(x: 0, y: 0, width: 480, height: 300),
		    styleMask: [.titled, .closable, .miniaturizable, .resizable, .fullSizeContentView],
		    backing: .buffered, defer: false)
		window.center()
		window.setFrameAutosaveName("Main Window")
		window.contentView = NSHostingView(rootView: contentView)
		window.makeKeyAndOrderFront(nil)
		
		// stuff
		if let jsonURL = Bundle.main.url(forResource: "gear", withExtension: "json") {
			let jsonData = try! Data(contentsOf: jsonURL)
			let jsonDecoder = JSONDecoder()
			let gear = try! jsonDecoder.decode([Gear].self, from: jsonData)
			
			print(gear)
		}
		
	}

	func applicationWillTerminate(_ aNotification: Notification) {
		// Insert code here to tear down your application
	}


}

