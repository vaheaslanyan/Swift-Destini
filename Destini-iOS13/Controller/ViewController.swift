//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Vahe Aslanyan on 04/10/2020.
//  Copyright © 2020 Vahe Aslanyan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!

    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = storyBrain.stories[0].title
        choice1Button.setTitle(storyBrain.stories[0].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[0].choice2, for: .normal)
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let storyChoice = storyBrain.nextStory(sender.currentTitle!)
        storyLabel.text = storyBrain.stories[storyChoice].title
        choice1Button.setTitle(storyBrain.stories[storyChoice].choice1, for: .normal)
        choice2Button.setTitle(storyBrain.stories[storyChoice].choice2, for: .normal)
    }
    
}

