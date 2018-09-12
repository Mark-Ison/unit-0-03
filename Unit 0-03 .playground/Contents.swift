// Created on: Sept-2018
// Created by: Mark Ison
// Created for: ICS3U
// This program is the UIKit solution for 
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let nameLabel : UILabel = UILabel()
    let cityLabel : UILabel = UILabel()
    let countryLabel : UILabel = UILabel()
    let touchmeButton = UIButton()
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        //nameLabel.text = "Mark Ison"
        nameLabel.textColor = #colorLiteral(red: 0.952941179275513, green: 0.686274528503418, blue: 0.133333340287209, alpha: 1.0)
        view.addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        //cityLabel.text = "Ottawa"
        cityLabel.textColor = #colorLiteral(red: 0.952941179275513, green: 0.686274528503418, blue: 0.133333340287209, alpha: 1.0)
        view.addSubview(cityLabel)
        cityLabel.translatesAutoresizingMaskIntoConstraints = false
        cityLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20).isActive = true
        cityLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        //countryLabel.text = "Canada"
        countryLabel.textColor = #colorLiteral(red: 0.952941179275513, green: 0.686274528503418, blue: 0.133333340287209, alpha: 1.0)
        view.addSubview(countryLabel)
        countryLabel.translatesAutoresizingMaskIntoConstraints = false
        countryLabel.topAnchor.constraint(equalTo: cityLabel.bottomAnchor, constant: 20).isActive = true
        countryLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        touchmeButton.setTitle("Touch Me", for: UIControlState.normal)
        touchmeButton.setTitleColor(.blue, for: .normal)
        touchmeButton.addTarget(self, action: #selector(magic), for: .touchUpInside)
        view.addSubview(touchmeButton)
        touchmeButton.translatesAutoresizingMaskIntoConstraints = false
        touchmeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        touchmeButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 20).isActive = true
    }
    
    @objc func magic() {
        nameLabel.text = "Mark Ison"
        cityLabel.text = "Ottawa"
        countryLabel.text = "Canada"
        
    }
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()

