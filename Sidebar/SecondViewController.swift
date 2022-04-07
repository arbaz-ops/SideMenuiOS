//
//  SecondViewController.swift
//  Sidebar
//
//  Created by Carbonic-IT on 05/04/2022.
//

import UIKit

class SecondViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isToolbarHidden = true
        self.navigationController?.navigationBar.isHidden = true
    }
    
    @IBAction func openSlideMenuTapped(_ sender: UIButton) {
        self.slideMenu(sender: sender)
    }
    
    @IBAction func backAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    

}
