//
//  DetailView.swift
//  HomeworkDay9(Contact)
//
//  Created by Hung Vu on 21/10/2023.
//

import UIKit

final class DetailView: UIView {
    @IBOutlet private weak var detailImage: UIImageView!
    @IBOutlet private weak var detailLabel: UILabel!
    
    init(image: String, detail: String) {
        super.init(frame: .zero)
//        detailImage.layer.cornerRadius = 4
//            detailImage.image = UIImage(named: image)
//            detailLabel.text = detail
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
