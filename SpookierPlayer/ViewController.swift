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
            let myPlaylistQuery = MPMediaQuery.playlists()
            let predicate = MPMediaPropertyPredicate(value: "Spooky", forProperty: MPMediaPlaylistPropertyName)
            myPlaylistQuery.addFilterPredicate(predicate)
            musicPlayer.setQueue(with: myPlaylistQuery)
            musicPlayer.prepareToPlay()
            musicPlayer.play()
        }
        else {
            musicPlayer.pause()
        }
    }

}

