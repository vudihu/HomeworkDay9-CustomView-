//
//  ViewController.swift
//  HomeworkDay9(Contact)
//
//  Created by Hung Vu on 21/10/2023.
//

import UIKit

class ViewController: UIViewController {
    
    // Khoi tao 1 View co kieu la UIView (co dau ngoac don la khoi tao)
    let headerView: UIView = {
        // Dinh nghia View de khoi tao
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    let lineView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray4
        return view
    }()
    
    let bodyView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    let profileImage: UIImageView = {
        let image = UIImageView()
        image.backgroundColor = UIColor(red: 218/255, green: 224/255, blue: 250/255, alpha: 1)
        image.image = UIImage(named: "icons8man")
        image.layer.cornerRadius = 10
        return image
    }()
    
    let nameLabel: UILabel = {
        let name = UILabel()
        name.text = "William John Malik"
        name.font = .boldSystemFont(ofSize: 20)
        name.textColor = UIColor(red: 19/255, green: 46/255, blue: 76/255, alpha: 1)
        name.textAlignment = .left
        return name
    }()
    
    let descriptionlabel: UILabel = {
        let descrip = UILabel()
        descrip.text = "Aggressive Investor"
        descrip.font = .boldSystemFont(ofSize: 15)
        descrip.textColor = UIColor(red: 19/255, green: 46/255, blue: 76/255, alpha: 1)
        descrip.textAlignment = .left
        return descrip
    }()
    
    let footerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    let contentView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 237/255, green: 239/255, blue: 253/255, alpha: 1)
        view.layer.cornerRadius = 10
        return view
    }()
    
    let headphoneImage: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "headphone")
        image.layer.cornerRadius = 10
        return image
    }()
    
    let headphoneTitle: UILabel = {
        let title = UILabel()
        title.text = "Feel Free to Ask, We Ready to Help"
        title.textColor  = UIColor(red: 111/255, green: 128/255, blue: 213/255, alpha: 1)
        title.font = .boldSystemFont(ofSize: 12)
        title.textAlignment = .right
        return title
    }()
    
    let detailMainView: [DetailView] = [
        DetailView(image: "icons8man", detail: "Personal Data"),
        DetailView(image: "icons8man", detail: "Settings"),
        DetailView(image: "icons8man", detail: "E-Statement"),
        DetailView(image: "icons8man", detail: "Refferal Code"),
        DetailView(image: "icons8man", detail: "FAQs"),
        DetailView(image: "icons8man", detail: "Our Handbook"),
        DetailView(image: "icons8man", detail: "Community")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    
    func setupUI() {
        view.backgroundColor = .white
        // Them view vao doi tuong View khac dung addsubview (them headerView vao superView)
        self.view.addSubview(headerView)
        self.view.addSubview(lineView)
        self.view.addSubview(bodyView)
        self.view.addSubview(footerView)
        
        // MARK: HeaderView
        headerView.frame = CGRect(x: 0,
                                  y: 0,
                                  width: self.view.bounds.width,
                                  height: 180)
        
        profileImage.frame = CGRect(x: 24, y: 100, width: 60, height: 60)
        headerView.addSubview(profileImage)
        let tapImageGesture = UITapGestureRecognizer(target: self, action: #selector(tapToProfileScreen))
        profileImage.addGestureRecognizer(tapImageGesture)
        profileImage.isUserInteractionEnabled = true
        
        nameLabel.frame = CGRect(x: profileImage.frame.width + 40,
                                 y: profileImage.frame.maxX + 24,
                                 width: 200,
                                 height: 20)
        headerView.addSubview(nameLabel)
        
        descriptionlabel.frame = CGRect(x: profileImage.frame.width + 40,
                                 y: profileImage.frame.maxY - 24,
                                 width: 200,
                                 height: 20)
        headerView.addSubview(descriptionlabel)
        
        
        // MARK: LineView
        lineView.frame = CGRect(x: 24,
                                y: headerView.bounds.height,
                                width: self.view.bounds.width - 48,
                                height: 2)
        
        // MARK: BodyView
        bodyView.frame = CGRect(x: 0,
                                y: headerView.bounds.height + lineView.bounds.height,
                                width: self.view.bounds.width,
                                height: 200)
                                
        // Khoi tao DetailView
        let detailView = Bundle.main.loadNibNamed("DetailView", owner: self)?.first as! DetailView
        // as! ep kieu ve DetailView
        detailView.frame = CGRect(x: 0,
                                  y: 0,
                                  width: self.view.bounds.width,
                                  height: 80)
        bodyView.addSubview(detailView)
//        for customView in detailMainView {
//            bodyView.addSubview(customView)
//        }
        
        
        // MARK: FooterView
        footerView.frame = CGRect(x: 0,
                                  y: bodyView.frame.maxY,
                                  width: self.view.bounds.width,
                                  height: 100)
        
        contentView.frame = CGRect(x: 24,
                                   y: 0,
                                   width: footerView.bounds.width - 48,
                                   height: 100)
        footerView.addSubview(contentView)
        headphoneImage.frame = CGRect(x: 24, y: 20, width: 60, height: 60)
        contentView.addSubview(headphoneImage)
        headphoneTitle.frame = CGRect(x: 10, y: 40, width: 300, height: 20)
        contentView.addSubview(headphoneTitle)
        
    }
    
    @objc func tapToProfileScreen(_ gesture: UITapGestureRecognizer) {
        let profileView = ProfileViewController()
        profileView.modalPresentationStyle = .overFullScreen
        self.present(profileView, animated: true)
    }
}

