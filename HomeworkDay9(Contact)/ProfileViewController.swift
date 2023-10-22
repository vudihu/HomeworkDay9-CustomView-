//
//  ProfileViewController.swift
//  HomeworkDay9(Contact)
//
//  Created by Hung Vu on 21/10/2023.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    let headerImage: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = UIColor(red: 218/255, green: 224/255, blue: 250/255, alpha: 1)
        image.image = UIImage(named: "icons8man")
        image.layer.cornerRadius = 10
        return image
    }()
    
    let informationView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    let genderView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()


    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        view.backgroundColor = .white
        self.view.addSubview(headerImage)
        self.view.addSubview(informationView)
        self.view.addSubview(genderView)
        
        // MARK: HeaderImage
        headerImage.frame = CGRect(x: view.bounds.width / 2 - 50,
                                   y: 100,
                                   width: 100,
                                   height: 100)
        
        // MARK: InformationView
        informationView.frame = CGRect(x: 0,
                                       y: headerImage.frame.maxY + 50,
                                       width: self.view.bounds.width,
                                       height: 120)
        let inforView = Bundle.main.loadNibNamed("InformationView", owner: self)?.first as! InformationView
        inforView.frame = CGRect(x: 0,
                                 y: 0,
                                 width: informationView.bounds.width,
                                 height: informationView.bounds.height)
        informationView.addSubview(inforView)
        
        // MARK: GenderView
        genderView.frame = CGRect(x: 0,
                                  y: informationView.frame.maxY,
                                  width: self.view.bounds.width,
                                  height: 120)
        let genView = Bundle.main.loadNibNamed("GenderView", owner: self)?.first as! GenderView
        genView.frame = CGRect(x: 0,
                               y: 0,
                               width: genderView.bounds.width,
                               height: genView.bounds.height)
        genderView.addSubview(genView)
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapToFirstScreen))
        headerImage.addGestureRecognizer(tapGesture)
        headerImage.isUserInteractionEnabled = true
        
    }
    @objc func tapToFirstScreen() {
        let firstScreen = ViewController()
        firstScreen.modalPresentationStyle = .overFullScreen
        self.present(firstScreen, animated: true)
    }

}
