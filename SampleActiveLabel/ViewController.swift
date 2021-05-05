//
//  ViewController.swift
//  SampleActiveLabel
//
//  Created by Makoto on 2021/05/01.
//

import UIKit
import ActiveLabel
import SnapKit

class ViewController: UIViewController {
    
    private let urlLabel = ActiveLabel()
    @IBOutlet weak var urlLabelView: UIView! {
        didSet {
            urlLabelView.addSubview(urlLabel)
            urlLabel.snp.makeConstraints { $0.edges.equalToSuperview() }
            urlLabel.numberOfLines = 0
            urlLabel.enabledTypes = [.url]
            urlLabel.text = "https://activelabel.com"
            urlLabel.URLColor = .blue
            urlLabel.handleURLTap { _ in self.urlLabel.URLColor = .red }
        }
}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
