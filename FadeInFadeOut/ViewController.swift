//
//  ViewController.swift
//  FadeInFadeOut
//
//  Created by Jaime Jazareno III on 21/12/2017.
//  Copyright © 2017 Jaime Jazareno III. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var buton: UIButton!
    @IBOutlet weak var segControl: UISegmentedControl!
    @IBOutlet weak var slider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func fadeIn(_ sender: Any) {
        UIView.animate(withDuration: 1.0, animations: {
            self.label.alpha = 1
            self.buton.alpha = 1
            self.segControl.alpha = 1
        })
    }
    
    @IBAction func fadeOut(_ sender: Any) {
        UIView.animate(withDuration: 1.0, animations: {
            self.label.alpha = 0
            self.buton.alpha = 0
            self.segControl.alpha = 0
        })
    }
    
    @IBAction func alphaSlider(_ sender: Any) {
        label.alpha = CGFloat(slider.value)
        buton.alpha = CGFloat(slider.value)
        segControl.alpha = CGFloat(slider.value)
    }
    
}

