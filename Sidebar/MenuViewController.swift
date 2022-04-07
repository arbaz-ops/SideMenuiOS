//
//  MenuViewController.swift
//  Sidebar
//
//  Created by Carbonic-IT on 05/04/2022.
//

import UIKit

class MenuViewController: BaseViewController {
    var vc: VC.Type?

    @IBOutlet var menuButtons: [UIButton]!
    @IBOutlet weak var sideMenuView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
        print(menuButtons)
        
        view.isUserInteractionEnabled = true
        
        self.view.addGestureRecognizer(UITapGestureRecognizer.init(target: self, action: #selector(viewTapped)))
    }
    
    @objc func viewTapped() {
        justHide()
    }
    
    @IBAction func secondViewController(_ sender: UIButton) {
        changeViewController(vc: .secondViewController)
        let topViewController : UIViewController = self.navigationController!.topViewController!
        justHide()
        print(topViewController)
    }
    @IBAction func firstViewControllerTapped(_ sender: UIButton) {
        changeViewController(vc: .firstViewController)
        let topViewController : UIViewController = self.navigationController!.topViewController!
        justHide()

        print(topViewController)
    }
    
    @IBAction func thirdViewController(_ sender: UIButton) {
        changeViewController(vc: .thirdViewController)
        justHide()
    }
    
    
  
}
