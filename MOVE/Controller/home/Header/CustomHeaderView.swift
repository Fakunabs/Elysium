//
//  HeaderView.swift
//  MOVE
//
//  Created by Vinh Nguyen on 25/04/2023.
//

import UIKit

class CustomHeaderView: UIView {
    
    @IBOutlet private weak var contentView: UIView!
    @IBOutlet private weak var titleLabel: UILabel!
    
    override init(frame: CGRect) {
        super .init(frame: frame)
        loadNib()
    }
    
    required init?(coder: NSCoder) {
        super .init(coder: coder)
        loadNib()
    }
    
    func loadNib() {
        Bundle.main.loadNibNamed(CustomHeaderView.className, owner: self)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
    }
    
    func setUp(title: String){
        titleLabel.text = title
        titleLabel.font = AppFonts.fontMontserratBold(size: 20)
    }

}
