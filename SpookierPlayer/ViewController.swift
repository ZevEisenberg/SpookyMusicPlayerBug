//
//  ViewController.swift
//  SpookierPlayer
//
//  Created by Zev Eisenberg on 10/18/19.
//  Copyright © 2019 Zev Eisenberg. All rights reserved.
//

import MediaPlayer
import UIKit

class ViewController: UIViewController {

    let musicPlayer = MPMusicPlayerController.applicationMusicPlayer

    @IBOutlet weak var playPauseButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        playPauseButton.setTitle("Play", for: .normal)
        playPauseButton.setTitle("Pause", for: .selected)
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        playPauseButton.isSelected.toggle()
        if playPauseButton.isSelected {
            let mySongsQuery = MPMediaQuery.songs()
            musicPlayer.setQueue(with: mySongsQuery)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
        }
        else {
            musicPlayer.pause()
        }
    }

}

