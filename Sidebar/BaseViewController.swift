//
//  BaseViewController.swift
//  Sidebar
//
//  Created by Carbonic-IT on 05/04/2022.
//

import UIKit



class BaseViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    func changeViewController(vc: VC?) {
        let topViewController : UIViewController = self.navigationController!.topViewController!
            print("View Controller is : \(topViewController) \n", terminator: "")
        print(vc, terminator: "")
        
        switch vc {
        case .firstViewController:
            openViewController(viewController: .firstViewController)
        case .secondViewController:
            openViewController(viewController: .secondViewController)
        case .thirdViewController:
            openViewController(viewController: .thirdViewController)

        default:
            break
        }
        
        
    }
    
    
    func openViewController(viewController: VC?) {
        let destinationVC = storyboard?.instantiateViewController(withIdentifier: viewController!.rawValue)
        let topViewController : UIViewController = self.navigationController!.topViewController!
        print(destinationVC)
        if (topViewController.restorationIdentifier! == destinationVC!.restorationIdentifier!){
            print("Same VC")
        } else {
            self.navigationController!.pushViewController(destinationVC!, animated: true)
        }
    }
    
    func slideMenu(sender: UIButton) {
        print("sadsa")
        let obj = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
        self.view.addSubview(obj.view)
        self.addChild(obj)
        obj.view.layoutSubviews()
        obj.view.frame=CGRect(x: 0 - UIScreen.main.bounds.size.width, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
        UIView.animate(withDuration: 0.3, animations: { () -> Void in
            obj.view.frame=CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height);
            sender.isEnabled = true
            }, completion:nil)

    }
    
    func justHide(){
        UIView.animate(withDuration: 0.3, animations: { () -> Void in
            self.view.frame = CGRect(x: -UIScreen.main.bounds.size.width, y: 0, width: UIScreen.main.bounds.size.width,height: UIScreen.main.bounds.size.height)
            self.view.layoutIfNeeded()
            self.view.backgroundColor = UIColor.clear
        }, completion: { (finished) -> Void in
            self.view.removeFromSuperview()
            self.removeFromParent()
        })
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
