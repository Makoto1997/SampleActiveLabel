//
//  ViewController.swift
//  SampleActiveLabel
//
//  Created by Makoto on 2021/05/01.
//

import UIKit
import ActiveLabel
import SnapKit

final class ViewController: UIViewController {
    
    private let urlLabel = ActiveLabel()
    @IBOutlet weak var urlView: UIView! {
        didSet {
            urlView.addSubview(urlLabel)
            urlLabel.snp.makeConstraints { $0.edges.equalToSuperview() }
            urlLabel.numberOfLines = 0
            urlLabel.enabledTypes = [.url]
            urlLabel.text = "https://activelabel.com"
            urlLabel.URLColor = .blue
            urlLabel.handleURLTap { _ in self.urlLabel.URLColor = .red }
        }
    }
    
    private let hashtagLabel = ActiveLabel()
    @IBOutlet weak var hashtagView: UIView! {
        didSet {
            hashtagView.addSubview(hashtagLabel)
            hashtagLabel.snp.makeConstraints { $0.edges.equalToSuperview() }
            hashtagLabel.numberOfLines = 0
            hashtagLabel.enabledTypes = [.hashtag]
            hashtagLabel.text = "#プログラミング難しい！"
            hashtagLabel.textColor = .black
            hashtagLabel.hashtagColor = .green
            hashtagLabel.handleHashtagTap { _ in self.hashtagLabel.hashtagColor = .blue }
        }
    }
    
    private let mentionLabel = ActiveLabel()
    @IBOutlet weak var mentionView: UIView! {
        didSet {
            mentionView.addSubview(mentionLabel)
            mentionLabel.snp.makeConstraints { $0.edges.equalToSuperview() }
            mentionLabel.numberOfLines = 0
            mentionLabel.enabledTypes = [.mention]
            mentionLabel.text = "@mention"
            mentionLabel.textColor = .black
            mentionLabel.mentionColor = .red
            mentionLabel.handleMentionTap { _ in self.mentionLabel.mentionColor = .green }
        }
    }
}
