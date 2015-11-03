//
//  ViewController.swift
//  MyMovies3
//
//  Created by Charles Konkol on 2015-11-02.
//  Copyright © 2015 Chuck Konkol. All rights reserved.
//
import UIKit
import AVKit
import AVFoundation

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepareForSegue(segue: UIStoryboardSegue,
        sender: AnyObject?) {
            if segue.identifier == "first"
            {
                let destination = segue.destinationViewController as!
                AVPlayerViewController
                //Change to match you video filename in supporting files
                let termsPath:String? = NSBundle.mainBundle().pathForResource("trailer1", ofType: "mp4")!
                let url = NSURL(fileURLWithPath: termsPath!)
                destination.player = AVPlayer(URL: url)
                destination.player!.play()
            }
            if segue.identifier == "second"
            {
                let destination = segue.destinationViewController as!
                AVPlayerViewController
                //Change to match you video filename in supporting files
                let termsPath:String? = NSBundle.mainBundle().pathForResource("trailer2", ofType: "mp4")!
                let url = NSURL(fileURLWithPath: termsPath!)
                destination.player = AVPlayer(URL: url)
                destination.player!.play()
            }
            if segue.identifier == "third"
            {
                let destination = segue.destinationViewController as!
                AVPlayerViewController
                //Change to match you video filename in supporting files
                let termsPath:String? = NSBundle.mainBundle().pathForResource("trailer3", ofType: "mp4")!
                let url = NSURL(fileURLWithPath: termsPath!)
                destination.player = AVPlayer(URL: url)
                destination.player!.play()
            }
            
    }


}

